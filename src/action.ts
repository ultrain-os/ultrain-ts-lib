/**
 * @author fanliangqin@ultrain.io
 */
import { Asset } from "./asset";
import { DataStream } from "./datastream";
import { ISerializable } from "./contract";
import { Log } from "./log";
import { env as ultrain } from "./ultrain-lib";

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

export class PermissionLevel implements ISerializable {
    public actor: u64;
    public permission: u64;

    constructor(actor: u64 = 0, permission: u64 = 0) {
        this.actor = actor;
        this.permission = permission;
    }

    public equal(rhs: PermissionLevel): boolean {
        return this.actor == rhs.actor && this.permission == rhs.permission;
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.actor);
        ds.write<u64>(this.permission);
        Log.s(" actor: ").i(this.actor, 16);
        Log.s(" permission: ").i(this.permission, 16);
    }

    public deserialize(ds: DataStream): void {
        this.actor = ds.read<u64>();
        this.permission = ds.read<u64>();
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

    let arr = new Uint8Array(64000);
    let ds = new DataStream(<usize>arr.buffer, 64000);
    params.serialize(ds);
    actimpl.data = ds.toArray<u8>();

    arr = new Uint8Array(64000);
    ds = new DataStream(<usize>arr.buffer, 64000);
    actimpl.serialize(ds);
    ultrain.send_inline(<usize>ds.buffer, ds.pos);
}


