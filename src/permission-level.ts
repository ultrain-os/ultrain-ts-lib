import { NAME, RNAME } from "./account";

/**
 * Permission Level stands for '-p' paramters.
 * for example,
 * PermissionLevel(N("tom"), N("active")) equals '-p tom@active'
 *
 * @class PermissionLevel
 */
export class PermissionLevel implements Serializable {
    public actor: u64;
    public permission: string;

    constructor(actor: u64 = 0, spermission: string = "active") {
        this.actor = actor;
        this.permission = spermission;
    }

    public equal(rhs: PermissionLevel): boolean {
        return this.actor == rhs.actor && this.permission == rhs.permission;
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.actor);
        ds.write<u64>(NAME(this.permission));
    }

    public deserialize(ds: DataStream): void {
        this.actor = ds.read<u64>();
        this.permission = RNAME(ds.read<u64>());
    }

    public primaryKey(): u64 { return <u64>0; }
}