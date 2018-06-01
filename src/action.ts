/**
 * @author fanliangqin@ultrain.io
 */
import { Asset } from "./asset";
import { DataStream } from "./datastream";
import { ISerializable } from "./contract";
import { Log } from "./log";
import { env as ultrain } from "./ultrain-lib";
import { PermissionLevel } from "./permission-level";

export function requirePermissionLevel(pl: PermissionLevel) {
    ultrain.require_auth2(pl.actor, pl.permission);
}

export class TransferParams implements ISerializable {
    public from: u64;
    public to: u64;
    public quantity: Asset;
    public memo: string;

    constructor(from: u64 = 0, to: u64 = 0, quantity: Asset = null, memo: string = "") {
        this.from = from;
        this.to = to;
        if (quantity == null) this.quantity = new Asset();
        this.memo = memo;
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.from);
        ds.write<u64>(this.to);
        this.quantity.serialize(ds);
        ds.writeString(this.memo);
    }

    public deserialize(ds: DataStream): void {
        this.from = ds.read<u64>();
        this.to = ds.read<u64>();
        if (this.quantity == null) this.quantity = new Asset();
        this.quantity.deserialize(ds);
        this.memo = ds.readString();
    }

    public bytesLength(): u32 {
        return 0;
    }
}

class ActionImpl implements ISerializable {
    public account: u64;
    public name: u64;
    public authorization: PermissionLevel[];
    public data: u8[];

    constructor() {
        this.account = 0;
        this.name = 0;
        this.authorization = [];
        this.data = [];
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.account);
        ds.write<u64>(this.name);
        let len: u32 = <u32>this.authorization.length;
        ds.writeVarint32(len);
        for (let i: u32 = 0; i < len; ++i) {
            this.authorization[i].serialize(ds);
        }
        ds.writeVector<u8>(this.data);
    }

    public deserialize(ds: DataStream): void {
        this.account = ds.read<u64>();
        this.name = ds.read<u64>();
        let len = ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let pl = new PermissionLevel();
            pl.deserialize(ds);
            this.authorization.push(pl);
        }
        this.data = ds.readVector<u8>();
    }
}

export function dispatchInline(pl: PermissionLevel, code: u64, act: u64, params: TransferParams): void {
    let actimpl: ActionImpl = new ActionImpl();
    actimpl.authorization.push(pl);
    actimpl.account = code;
    actimpl.name = act;

    let len = DataStream.measure<TransferParams>(params);
    let arr = new Uint8Array(len);
    let ds = new DataStream(<usize>arr.buffer, len);
    params.serialize(ds);
    actimpl.data = ds.toArray<u8>();

    len = DataStream.measure<ActionImpl>(actimpl);
    arr = new Uint8Array(len);
    ds = new DataStream(<usize>arr.buffer, len);
    actimpl.serialize(ds);
    ultrain.send_inline(<usize>ds.buffer, ds.pos);
}


export class Action implements ISerializable {

    serialize(ds: DataStream): void {}
    deserialize(ds: DataStream): void {}
}
