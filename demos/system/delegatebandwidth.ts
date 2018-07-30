/**
 * @author fanliangqin@ultrain.io
 */
import { Asset } from "../../src/asset";
import { ISerializable } from "../../lib/ISerializable";
import { DataStream } from "../../src/datastream";

export let refund_delay: time = 3 * 24 * 3600;
export let refund_expiration_time: time = 3600;

export class UserResources implements ISerializable {
    owner: account_name;
    net_weight: Asset;
    cpu_weight: Asset;
    ram_bytes: i64;

    constructor() {
        this.owner = 0;
        this.net_weight = new Asset();
        this.cpu_weight = new Asset();
        this.ram_bytes = 0;
    }

    serialize(ds: DataStream): void {
        ds.write<account_name>(this.owner);
        this.net_weight.serialize(ds);
        this.cpu_weight.serialize(ds);
        ds.write<i64>(this.ram_bytes);
    }

    deserialize(ds: DataStream): void {
        this.owner = ds.read<account_name>();
        this.net_weight.deserialize(ds);
        this.cpu_weight.deserialize(ds);
        this.ram_bytes = ds.read<i64>();
    }

    primaryKey(): u64 { return this.owner; }
}

export class DelegatedBandwidth implements ISerializable {
    from: account_name;
    to: account_name;
    net_weight: Asset;
    cpu_weight: Asset;

    constructor() {
        this.from = 0;
        this.to = 0;
        this.net_weight = new Asset();
        this.cpu_weight = new Asset();
    }

    serialize(ds: DataStream): void {
        ds.write<account_name>(this.from);
        ds.write<account_name>(this.to);
        this.net_weight.serialize(ds);
        this.cpu_weight.serialize(ds);
    }

    deserialize(ds: DataStream): void {
        this.from = ds.read<account_name>();
        this.to = ds.read<account_name>();
        this.net_weight.deserialize(ds);
        this.cpu_weight.deserialize(ds);
    }

    primaryKey(): u64 { return this.to; }
}

export class RefundRequest implements ISerializable {
    owner: account_name;
    request_time: time;
    net_amount: Asset;
    cpu_amount: Asset;

    constructor() {
        this.owner        = 0;
        this.request_time = 0;
        this.net_amount   = new Asset();
        this.cpu_amount   = new Asset();
    }

    serialize(ds: DataStream): void {
        ds.write<account_name>(this.owner);
        ds.write<time>(this.request_time);
        this.net_amount.serialize(ds);
        this.cpu_amount.serialize(ds);
    }

    deserialize(ds: DataStream): void {
        this.owner        = ds.read<account_name>();
        this.request_time = ds.read<time>();
        this.net_amount.deserialize(ds);
        this.cpu_amount.deserialize(ds);
    }
}
