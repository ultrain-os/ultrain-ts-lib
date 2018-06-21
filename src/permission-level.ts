import { ISerializable } from "../lib/ISerializable";
import { DataStream } from "./datastream";
import { Log } from "./log";

export class PermissionLevel implements ISerializable {
    public actor: u64;
    public permission: u64;

    constructor(actor: u64 = 0, permission: u64 = 0) {
        this.actor = actor;
        this.permission = permission;
    }

    @operator("==")
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