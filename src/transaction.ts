import { ISerializable } from "./contract";
import { DataStream } from "./datastream";
import { env as ultrain } from "./ultrain-lib";
import { PermissionLevel } from "./permission-level";
import { Action } from "./action";

export function checkAuth(serialized_transaction: u64, size: u64, permission: PermissionLevel[]): void {

}

export class TransactionHeader implements ISerializable {

    expiration: u32;
    region: u16;
    ref_block_num: u16;
    ref_block_prefix: u32;

    net_usage_words: u32;
    kcpu_usage: u32;
    delay_sec: u32;

    constructor(exp: u32 = ultrain.now() + 60, r: u16 = 0) {
        this.expiration = exp;
        this.region = r;
    }

    serialize(ds: DataStream): void {

    }

    deserialize(ds: DataStream): void {

    }
}

export class Transaction implements ISerializable {
    header: TransactionHeader;
    context_free_actions: Action[];
    actions: Action[];

    send(sender_id: u64, payer: u64): void {

    }

    serialize(ds: DataStream): void {

    }

    deserialize(ds: DataStream): void {

    }
}

export class DeferredTransaction implements ISerializable {
    transaction: Transaction;
    sender_id: u128;
    sender: u64;
    payer: u64;
    execute_after: u32;

    serialize(ds: DataStream): void {

    }

    deserialize(ds: DataStream): void {

    }
}