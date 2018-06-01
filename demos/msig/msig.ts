/**
 * @author fanliangqin@ultrain.io
 */

import "../../src/alias";
import { Contract, ISerializable } from "../../src/contract";
import { env as ultrain } from "../../src/ultrain-lib";
import { DataStream } from "../../src/datastream";
import { PermissionLevel } from "../../src/permission-level";
import { TransactionHeader, checkAuth, Transaction } from "../../src/transaction";
import { ultrain_assert, N } from "../../src/utils";
import { DBManager } from "../../src/dbmanager";
import { requirePermissionLevel } from "../../src/action";

class Proposal implements ISerializable {
    proposal_name: u64;
    requested_approvals: PermissionLevel[];
    provided_approvals: PermissionLevel[];
    packed_transaction: u8[];

    serialize(ds: DataStream): void {
        ds.write<u64>(this.proposal_name);
        let len = this.requested_approvals.length;
        ds.writeVarint32(len);
        for (let i: i32 = 0; i < len; i++) {
            this.requested_approvals[i].serialize(ds);
        }
        len = this.provided_approvals.length;
        ds.writeVarint32(len);
        for (let i: i32 = 0; i < len; i++) {
            this.provided_approvals[i].serialize(ds);
        }
        ds.writeVector<u8>(this.packed_transaction);
    }

    deserialize(ds: DataStream): void {
        this.proposal_name = ds.read<u64>();
        let len = ds.readVarint32();
        for (let i: i32 = 0; i < len; i++) {
            let pl = new PermissionLevel();
            pl.deserialize(ds);
            this.requested_approvals.push(pl);
        }
        len = ds.readVarint32();
        for (let i: i32 = 0; i < len; i++) {
            let pa = new PermissionLevel();
            pa.deserialize(ds);
            this.provided_approvals.push(pa);
        }
        this.packed_transaction = ds.readVector<u8>();
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
        let trx_header: TransactionHeader = new TransactionHeader();

        proposer = ds.read<u64>();
        proposal_name = ds.read<u64>();
        let len = ds.readVarint32();
        for (let i: i32 = 0; i < len; i++) {
            let pl = new PermissionLevel();
            pl.deserialize(ds);
            requested.push(pl);
        }

        let trx_pos = ds.pos;
        trx_header.deserialize(ds);
        ultrain.require_auth(proposer);
        ultrain_assert(trx_header.expiration > ultrain.now(), "transaction expired");

        let db = new DBManager<Proposal>(N("proposal"), this.receiver, proposer);
        let pp = new Proposal();
        let existing = db.get(proposal_name, pp);
        ultrain_assert(!existing, "proposal with the same name exists");

        checkAuth(ds.buffer + trx_pos, ds.len - trx_pos, requested);
        let obj = new Proposal();
        obj.proposal_name = proposal_name;
        obj.packed_transaction = ds.toArray<u8>().slice(trx_pos + 1);
        obj.requested_approvals = requested;

        db.emplace(proposal_name, obj);
    }

    approve(proposer: u64, proposal_name: u64, level: PermissionLevel): void {
        requirePermissionLevel(level);
        let db = new DBManager<Proposal>(N("proposal"), this.receiver, proposer);
        let pp = new Proposal();
        let existing = db.get(proposal_name, pp);

        ultrain_assert(existing, "proposal not found");

        let idx = -1;
        for (let i: i32 = 0; i < pp.requested_approvals.length; ++i) {
            if (pp.requested_approvals[i].equal(level)) {
                idx = i;
                break;
            }
        }

        ultrain_assert(idx != -1, "approval is not on the list of requested approvals");
        pp.provided_approvals.push(level);
        pp.requested_approvals.splice(idx, 1);

        db.modify(pp, proposer);
    }

    unapprove(proposer: u64, proposal_name: u64, level: PermissionLevel): void {
        requirePermissionLevel(level);
        let db = new DBManager<Proposal>(N("proposal"), this.receiver, proposer);
        let pp = new Proposal();
        let existing = db.get(proposal_name, pp);

        ultrain_assert(existing, "proposal not found");

        let idx = -1;
        for (let i: i32 = 0; i < pp.provided_approvals.length; ++i) {
            if (pp.provided_approvals[i].equal(level)) {
                idx = i;
                break;
            }
        }

        ultrain_assert(idx != -1, "no approval perviously granted.");

        pp.requested_approvals.push(level);
        pp.provided_approvals.splice(idx, 1);

        db.modify(pp, proposer);
    }

    cancel(proposer: u64, proposal_name: u64, canceler: u64): void {
        ultrain.require_auth(canceler);

        let db = new DBManager<Proposal>(N("proposal"), this.receiver, proposer);
        let pp = new Proposal();
        let existing = db.get(proposal_name, pp);

        ultrain_assert(existing, "proposal not found");

        if (proposer != canceler) {
            let ds = DataStream.fromArray(pp.packed_transaction);
            let trs = new Transaction();
            trs.deserialize(ds);
            ultrain_assert(trs.header.expiration < ultrain.now(), "cannot cancel until expiration");
        }

        db.erase(pp);
    }

    exec(proposer: u64, proposal_name: u64, executer: u64): void {
        ultrain.require_auth(executer);

        let db = new DBManager<Proposal>(N("proposal"), this.receiver, proposer);
        let pp = new Proposal();
        let existing = db.get(proposal_name, pp);

        ultrain_assert(existing, "proposal not found");

        // TODO(fanliangqin): send_deferred() method need 'uint128_t', how to deal with it?
        let buffer: u32 = load<u32>(<usize>pp.packed_transaction);
        let size = pp.packed_transaction.length;

        checkAuth(buffer, size, pp.provided_approvals);
        ultrain.send_deferred(proposal_name, executer, buffer, size);

        db.erase(pp);
    }
}