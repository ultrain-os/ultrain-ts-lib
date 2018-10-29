/**
 * @author fanliangqin@ultrain.io
 */

import { Contract } from "../../src/contract";
import { DSHelper } from "../../lib/datastream";
import { PermissionLevel } from "../../lib/permission-level";
import { TransactionHeader, Transaction } from "../../lib/transaction";
import { requirePermissionLevel } from "../../src/action";
import { env as action } from "../../internal/action.d";
import { env as transaction } from "../../internal/transaction.d";
import { env as permission } from "../../internal/permission.d";
import { now } from "../../src/time";
import { NAME } from "../../src/account";

class Proposal implements Serializable {
    proposal_name: u64;
    packed_transaction: u8[];

    constructor() {
        this.proposal_name = 0;
        this.packed_transaction = [];
    }

    serialize(ds: DataStream): void {
        ds.write<u64>(this.proposal_name);
        ds.writeVector<u8>(this.packed_transaction);
    }

    deserialize(ds: DataStream): void {
        this.proposal_name = ds.read<u64>();
        this.packed_transaction = ds.readVector<u8>();
    }

    primaryKey(): u64 {
        return this.proposal_name;
    }
}

class ApprovalsInfo implements Serializable {
    proposal_name: u64;
    requested_approvals: PermissionLevel[];
    provided_approvals: PermissionLevel[];

    constructor() {
        this.proposal_name = 0;
        this.requested_approvals = [];
        this.provided_approvals = [];
    }

    serialize(ds: DataStream): void {
        ds.write<u64>(this.proposal_name);
        ds.writeComplexVector<PermissionLevel>(this.requested_approvals);
        ds.writeComplexVector<PermissionLevel>(this.provided_approvals);
    }

    deserialize(ds: DataStream): void {
        this.proposal_name = ds.read<u64>();
        this.requested_approvals = ds.readComplexVector<PermissionLevel>();
        this.provided_approvals = ds.readComplexVector<PermissionLevel>();
    }

    primaryKey(): u64 {
        return this.proposal_name;
    }
}

export class MultiSig extends Contract {

    propose(): void {
        let ds = this.getDataStream();
        let proposer: u64;
        let proposal_name: u64;
        let requested: PermissionLevel[] = [];
        let trx_header: TransactionHeader = new TransactionHeader(now() + 60);

        proposer = ds.read<u64>();
        proposal_name = ds.read<u64>();
        let len = ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let pl = new PermissionLevel();
            pl.deserialize(ds);
            requested.push(pl);
        }

        let trx_pos = ds.pos;
        trx_header.deserialize(ds);
        action.require_auth(proposer);
        // TODO(liangqin): ultrain.now should change to time_point_sec.
        ultrain_assert(trx_header.expiration > now(), "msig.propose: transaction expired");

        let proptable = new DBManager<Proposal>(NAME("proposal"), this.receiver, proposer);
        let prop = new Proposal();
        let existing = proptable.get(proposal_name, prop);
        ultrain_assert(!existing, "msig.propose: proposal with the same name exists");

        let packed_requested = DSHelper.serializeComplexVector<PermissionLevel>(requested);

        let res = permission.check_transaction_authorization(ds.buffer + trx_pos, ds.len - trx_pos, 0, 0, packed_requested.pointer(), packed_requested.size());
        ultrain_assert(res > 0, "msig.propose: transaction authorization failed.");

        let obj = new Proposal();
        obj.proposal_name = proposal_name;
        obj.packed_transaction = ds.toArray<u8>().slice(trx_pos + 1);
        proptable.emplace(proposer, obj);


        let approvals = new DBManager<ApprovalsInfo>(NAME("approvals"), this.receiver, proposer);
        let a = new ApprovalsInfo();
        a.proposal_name = proposal_name;
        a.requested_approvals = requested;
        approvals.emplace(proposer, a);

    }

    approve(proposer: u64, proposal_name: u64, level: PermissionLevel): void {
        requirePermissionLevel(level);
        let approvals = new DBManager<ApprovalsInfo>(NAME("approvals"), this.receiver, proposer);
        let approval = new ApprovalsInfo();
        let existing = approvals.get(proposal_name, approval);

        ultrain_assert(existing, "msig.approve: proposal not found");

        let idx = -1;
        for (let i: i32 = 0; i < approval.requested_approvals.length; ++i) {
            if (approval.requested_approvals[i].equal(level)) {
                idx = i;
                break;
            }
        }

        ultrain_assert(idx != -1, "msig.approve: approval is not on the list of requested approvals");
        approval.provided_approvals.push(level);
        approval.requested_approvals.splice(idx, 1);

        approvals.modify(proposer, approval);
    }

    unapprove(proposer: u64, proposal_name: u64, level: PermissionLevel): void {
        requirePermissionLevel(level);
        let approvals = new DBManager<ApprovalsInfo>(NAME("approvals"), this.receiver, proposer);
        let approval = new ApprovalsInfo();
        let existing = approvals.get(proposal_name, approval);

        ultrain_assert(existing, "msig.unapprove: proposal not found");

        let idx = -1;
        for (let i: i32 = 0; i < approval.provided_approvals.length; ++i) {
            if (approval.provided_approvals[i].equal(level)) {
                idx = i;
                break;
            }
        }

        ultrain_assert(idx != -1, "msgi.unapprove: no approval perviously granted.");

        approval.requested_approvals.push(level);
        approval.provided_approvals.splice(idx, 1);

        approvals.modify(proposer, approval);
    }

    cancel(proposer: u64, proposal_name: u64, canceler: u64): void {
        action.require_auth(canceler);

        let proptable = new DBManager<Proposal>(NAME("proposal"), this.receiver, proposer);
        let prop = new Proposal();
        let existing = proptable.get(proposal_name, prop);

        ultrain_assert(existing, "msig.cancel: proposal not found");

        if (proposer != canceler) {
            let ds = DataStream.fromArray<u8>(prop.packed_transaction);
            let trs = new Transaction(now() + 60);
            trs.deserialize(ds);
            // TODO(liangqin): change now() to time_point_sec().
            ultrain_assert(trs.header.expiration < now(), "msig.cancel: cannot cancel until expiration");
        }
        proptable.erase(prop.primaryKey());

        let approvals = new DBManager<ApprovalsInfo>(NAME("approvals"), this.receiver, proposer);
        let approval = new ApprovalsInfo();
        existing = approvals.get(proposer, approval);
        ultrain_assert(existing, "msig.cancel: approvals not found.");
        approvals.erase(approval.primaryKey());
    }

    exec(proposer: account_name, proposal_name: u64, executer: u64): void {
        action.require_auth(executer);

        let proptable = new DBManager<Proposal>(NAME("proposal"), this.receiver, proposer);
        let prop = new Proposal();
        let existing = proptable.get(proposal_name, prop);
        ultrain_assert(existing, "msig.exec: proposal not found.");

        let approvals = new DBManager<ApprovalsInfo>(NAME("approvals"), this.receiver, proposer);
        let approval = new ApprovalsInfo();
        existing = approvals.get(proposal_name, approval);
        ultrain_assert(existing, "msig.exec: approval not found.");

        let pds = DataStream.fromArray<u8>(prop.packed_transaction);
        let trx_header = new TransactionHeader(now() + 60);
        trx_header.deserialize(pds);
        ultrain_assert(trx_header.expiration >= now(), "msig.exec: transaction expired.");

        let ppa = DSHelper.serializeComplexVector<PermissionLevel>(approval.provided_approvals);
        let res = permission.check_transaction_authorization(pds.pointer(), pds.size(), 0, 0, ppa.pointer(), ppa.size());
        ultrain_assert(res > 0, "msig.exec: transaction authorization failed.");
        // TODO(fanliangqin): send_deferred() method need 'uint128_t', how to deal with it?
        transaction.send_deferred(proposal_name, executer, pds.pointer(), pds.size(), 0);

        proptable.erase(prop.primaryKey());
        approvals.erase(approval.primaryKey());
    }
}