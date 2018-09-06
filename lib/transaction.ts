import { DataStreamFromCurrentAction } from "../src/contract";
import { ISerializable } from "../src/ISerializable";
import { DataStream } from "../lib/datastream";
import { Action, ActionImpl } from "../src/action";
import { ultrain_assert } from "../src/utils";
import { env as system } from "../internal/system.d";
import { env as transaction } from "../internal/transaction.d";
import { now } from "../src/time";

export class TransactionHeader implements ISerializable {

    expiration: u32;
    region: u16;
    ref_block_num: u16;
    ref_block_prefix: u32;

    net_usage_words: u32;
    kcpu_usage: u32;
    delay_sec: u32;

    constructor(exp: u32, r: u16 = 0) {
        this.expiration = exp;
        this.region = r;
        this.ref_block_num = 0;
        this.ref_block_prefix = 0;
        this.net_usage_words = 0;
        this.kcpu_usage = 0;
        this.delay_sec = 0;
    }

    serialize(ds: DataStream): void {
        ds.write<u32>(this.expiration);
        ds.write<u16>(this.region);
        ds.write<u16>(this.ref_block_num);
        ds.write<u32>(this.ref_block_prefix);
        ds.write<u32>(this.net_usage_words);
        ds.write<u32>(this.kcpu_usage);
        ds.write<u32>(this.delay_sec);
    }

    deserialize(ds: DataStream): void {
        this.expiration = ds.read<u32>();
        this.region = ds.read<u16>();
        this.ref_block_num = ds.read<u16>();
        this.ref_block_prefix = ds.read<u32>();
        this.net_usage_words = ds.read<u32>();
        this.kcpu_usage = ds.read<u32>();
        this.delay_sec = ds.read<u32>();
    }

    primaryKey(): u64 { return <u64>0; }
}

export class Transaction implements ISerializable {
    header: TransactionHeader;
    context_free_actions: ActionImpl[];
    actions: ActionImpl[];

    constructor(exp: u32, regId: u16 = 0) {
        this.header = new TransactionHeader(exp, regId);
        this.context_free_actions = [];
        this.actions = [];
    }

    send(sender_id: u64, payer: u64): void {
        let len = DataStream.measure<Transaction>(this);
        let arr = new Uint8Array(len);
        let ds = new DataStream(<usize>arr.buffer, len);
        this.serialize(ds);

        transaction.send_deferred(sender_id, payer, ds.buffer, ds.pos, 0);
    }

    serialize(ds: DataStream): void {
        this.header.serialize(ds);
        ds.writeComplexVector<ActionImpl>(this.context_free_actions);
        ds.writeComplexVector<ActionImpl>(this.actions);
    }

    deserialize(ds: DataStream): void {
        this.header.deserialize(ds);
        this.context_free_actions = ds.readComplexVector<ActionImpl>();
        this.actions = ds.readComplexVector<ActionImpl>();
    }

    primaryKey(): u64 { return <u64>0; }
}
// TODO(liangqin): transaction should support datatype u128.
type u128 = u64;
export class DeferredTransaction implements ISerializable {
    transaction: Transaction;
    sender_id: u128;
    sender: u64;
    payer: u64;
    execute_after: u32;

    static fromCurrentAction(): DeferredTransaction {
        let ds = DataStreamFromCurrentAction();
        let dt = new DeferredTransaction();
        dt.deserialize(ds);
        return dt;
    }

    constructor(trs: Transaction = null, sid: u128 = 0, sender: u64 = 0, payer: u64 = 0, eafter: u32 = 0) {
        if (trs == null) trs = new Transaction(now() + 0);

        this.transaction = trs;
        this.sender_id = sid;
        this.sender = sender;
        this.payer = payer;
        this.execute_after = eafter;
    }

    serialize(ds: DataStream): void {
        this.transaction.serialize(ds);
        ds.write<u128>(this.sender_id);
        ds.write<u64>(this.sender);
        ds.write<u64>(this.payer);
        ds.write<u32>(this.execute_after);
    }

    deserialize(ds: DataStream): void {
        this.transaction.deserialize(ds);
        this.sender_id = ds.read<u128>();
        this.sender = ds.read<u64>();
        this.payer = ds.read<u64>();
        this.execute_after = ds.read<u32>();
    }

    primaryKey(): u64 { return <u64>0; }
}


// export function checkAuth(trs_buffer: usize, size: u64, permission: PermissionLevel[]): void {

//     let len = DataStream.measureComplexVector<PermissionLevel>(permission);
//     let arr = new Uint8Array(len);
//     let ds = new DataStream(<usize>arr.buffer, len);
//     ds.writeComplexVector<PermissionLevel>(permission);

//     ultrain.check_auth(trs_buffer, size, ds.buffer, ds.pos);
// }

export function getAction(type: u32, index: u32): ActionImpl {
    let size1 = transaction.get_action(type, index, 0, 0);
    ultrain_assert(size1 > 0, "get_action size failed.");

    let arr = new Uint8Array(size1);
    let size2 = transaction.get_action(type, index, <usize>arr.buffer, size1);
    ultrain_assert(size1 == size2, "get_action failed, size1 != size2");
    let ds = new DataStream(<usize>arr.buffer, size1);
    let action = new ActionImpl();
    action.deserialize(ds);
    return action;
}