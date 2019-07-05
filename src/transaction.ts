import { ActionImpl } from "./action";
import { env as transaction } from "../internal/transaction.d";
import { DataStreamFromCurrentAction } from "./contract";

export class TransactionHeader implements Serializable {
    expiration: u32;
    ref_block_num: u16;
    ref_block_prefix: u32;

    net_usage_words: u32;  // this parameter is defined as 'unsigned_int', which serialize/deserialize as varint32.
    max_cpu_usage_ms: u8;
    delay_sec: u32;  // like net_usage_words

    constructor(exp: u32) {
        this.expiration = exp;
        this.ref_block_num = 0;
        this.ref_block_prefix = 0;
        this.net_usage_words = 0;
        this.max_cpu_usage_ms = 0;
        this.delay_sec = 0;
    }

    serialize(ds: DataStream): void {
        ds.write<u32>(this.expiration);
        ds.write<u16>(this.ref_block_num);
        ds.write<u32>(this.ref_block_prefix);
        ds.writeVarint32(this.net_usage_words);
        ds.write<u8>(this.max_cpu_usage_ms);
        ds.writeVarint32(this.delay_sec);
    }

    deserialize(ds: DataStream): void {
        this.expiration = ds.read<u32>();
        this.ref_block_num = ds.read<u16>();
        this.ref_block_prefix = ds.read<u32>();
        this.net_usage_words = ds.readVarint32();
        this.max_cpu_usage_ms = ds.read<u8>();
        this.delay_sec = ds.readVarint32();
    }
}

export class Transaction implements Serializable {
    header: TransactionHeader;
    context_free_actions: ActionImpl[];
    actions: ActionImpl[];
    extension_type: u8[] = []; // keep it empty, as a placeholder

    constructor(exp: u32) {
        this.header = new TransactionHeader(exp);
        this.context_free_actions = new Array<ActionImpl>();
        this.actions = new Array<ActionImpl>();
        this.extension_type = new Array<u8>();
    }

    /**
     * to get the transaction id.
     *
     * @readonly
     * @static
     * @type {string} return a string stands for a sha256 checksum.
     * @memberof Transaction
     */
    static get id() : string {
        return getTransactionId();
    }

    /**
     * to get the published time of this transacton.
     *
     * @readonly
     * @static
     * @type {u32} return seconds since epoch.
     * @memberof Transaction
     */
    static get publishTime(): u32 {
        return getTransactionPublishedTime();
    }

    send(sender_id: u64, payer: u64, replace_existing: boolean = false): void {
        let len = DataStream.measure<Transaction>(this);
        let arr = new Uint8Array(len);
        let ds = new DataStream(arr.buffer, len);
        this.serialize(ds);
        transaction.ts_send_deferred(sender_id, payer, ds.buffer, ds.pos, replace_existing);
    }

    serialize(ds: DataStream): void {
        this.header.serialize(ds);
        ds.writeComplexVector<ActionImpl>(this.context_free_actions);
        ds.writeComplexVector<ActionImpl>(this.actions);
        ds.writeVector<u8>(this.extension_type);
    }

    deserialize(ds: DataStream): void {
        this.header.deserialize(ds);
        this.context_free_actions = ds.readComplexVector<ActionImpl>();
        this.actions = ds.readComplexVector<ActionImpl>();
        this.extension_type = ds.readVector<u8>();
    }

    primaryKey(): u64 { return <u64>0; }

    public get delaySecs(): u32 {
        return this.header.delay_sec;
    }

    public set delaySecs(secs: u32) {
        this.header.delay_sec = secs;
    }
}

function getTransactionId(): string {
    const CheckSumLength: u32 = 64;
    let arr = new Uint8Array(CheckSumLength);
    let size = transaction.get_transaction_id(changetype<usize>(arr.buffer), CheckSumLength);
    ultrain_assert(size == CheckSumLength, "read id of this transaction failed. Its length is not 64 bits.");

    return String.UTF8.decodeUnsafe(arr.buffer, CheckSumLength);
}

function getTransactionPublishedTime(): u32 {
    return transaction.get_transaction_published_time();
}

export class OnErrorValue implements Serializable {
    sender_id: u64 = 0;
    sent_trx: u8[] = [];

    public static fromCurrentAction(): OnErrorValue {
        let error = new OnErrorValue();
        let ds = DataStreamFromCurrentAction();
        error.deserialize(ds);

        return error;
    }

    getTransaction(): Transaction {
        let tx = new Transaction(0);

        let ds = DataStream.fromArray<u8>(this.sent_trx);
        tx.deserialize(ds);
        return tx;
    }

    serialize(ds: DataStream): void {
        ds.write<u64>(0);
        ds.write<u64>(this.sender_id);
        ds.writeVector<u8>(this.sent_trx);
    }

    deserialize(ds: DataStream): void {
        // from consensus node, the sender id is an uint128_t type value,
        // but in typescript, there is no u128 type according,
        // so we just use the lower 64 bit value of uint128_t as sender id.
        this.sender_id = ds.read<u64>();
        ds.read<u64>(); // omit the higher 64 bit value for uint128_t.
        this.sent_trx = ds.readVector<u8>();
    }
}
