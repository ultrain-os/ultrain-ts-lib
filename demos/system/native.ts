/**
 * @author fanliangqin@ultrain.io
 */

import { Contract } from "../../src/contract";
import { PermissionLevel } from "../../src/permission-level";
import { PublicKey } from "../../internal/types";
import { UserResources } from "./delegatebandwidth";
import { env as privileged } from "../../internal/privileged.d";
import { NAME } from "../../src/account";

declare type bytes = Array<u8>;


function NameSuffix(n: u64): u64 {
    let remaining_bits_after_last_actual_dot: u32 = 0;
    let tmp: u32 = 0;

    for (let remaing_bits: i32 = 59; remaing_bits >= 4; remaing_bits -= 5) {
        let c: u64 = (n >> remaing_bits) & 0x000000000000001F; /* 64 bits */
        if (c == 0) {
            tmp = <u32>remaing_bits;
        } else {
            remaining_bits_after_last_actual_dot = tmp;
        }
    }

    let thirteenth_character: u64 = n & 0x000000000000000F;
    if (thirteenth_character != 0) {
        remaining_bits_after_last_actual_dot = tmp;
    }

    if (remaining_bits_after_last_actual_dot == 0) return n; // no actual dot in the name except leading dots.

    let mask: u64 = (0x0000000000000001 << remaining_bits_after_last_actual_dot) - 16;
    let shift = 64 - remaining_bits_after_last_actual_dot;
    return (((n & mask) << shift) + (thirteenth_character << (shift - 1)));
}

export class PermissionLevelWeight implements Serializable {
    permission: PermissionLevel;
    weight: weight_type;

    serialize(ds: DataStream): void {
        this.permission.serialize(ds);
        ds.write<weight_type>(this.weight);
    }

    deserialize(ds: DataStream): void {
        this.permission.deserialize(ds);
        this.weight = ds.read<weight_type>();
    }

    primaryKey(): u64 { return <u64>0; }
}

export class KeyWeight implements Serializable {
    key: PublicKey;
    weight: weight_type;

    serialize(ds: DataStream): void {
        ds.writeVector<u8>(this.key.data);
        ds.write<weight_type>(this.weight);
    }

    deserialize(ds: DataStream): void {
        this.key.data = ds.readVector<u8>();
        this.weight = ds.read<weight_type>();
    }

    primaryKey(): u64 { return <u64>0; }
}

export class Authority implements Serializable {
    threshold: u32;
    delay_sec: u32;
    keys: KeyWeight[];
    accounts: PermissionLevelWeight[];

    constructor() {
        this.threshold = 0;
        this.delay_sec = 0;
        this.keys = [];
        this.accounts = [];
    }

    serialize(ds: DataStream): void {
        ds.write<u32>(this.threshold);
        ds.write<u32>(this.delay_sec);
        ds.writeComplexVector<KeyWeight>(this.keys);
        ds.writeComplexVector<PermissionLevelWeight>(this.accounts);
    }

    deserialize(ds: DataStream): void {
        this.threshold = ds.read<u32>();
        this.delay_sec = ds.read<u32>();
        this.keys = ds.readComplexVector<KeyWeight>();
        this.accounts = ds.readComplexVector<PermissionLevelWeight>();
    }
}

/*
 * BlockHeader is not used yet, let it go temporaryly.
 */
// class BlockHeader implements Serializable {
//     timestamp: u32;
//     producer: account_name;
//     confirmed: u16;
//     previous: block_id_type;
//     transaction_mroot: Checksum256;
//     action_mroot: Checksum256;
//     schedule_version: u32;

// }

export class Native extends Contract {

    newaccount(creator: account_name, newact: account_name): void {
        if (creator != this.receiver) {
            let tmp = newact >> 4;
            let has_dot: boolean = false;

            for (let i: u32 = 0; i < 12; i++) {
                has_dot = !(tmp & 0x1f) || has_dot;
                tmp >>= 5;
            }

            if (has_dot) {
                let suffix = NameSuffix(newact);
                if (suffix == newact) {
                    // TODO(liangqin): DBManager需要有secondary支持， 怎么弄？？？？？？？
                } else {
                    ultrain_assert(creator == suffix, "native.newaccount: only suffix may create this account.");
                }
            }
        }

        let userres = new DBManager<UserResources>(NAME("userres"), this.receiver, newact);
        let res = new UserResources();
        res.owner = newact;
        userres.emplace(newact, res);

        privileged.set_resource_limits(newact, 0, 0, 0);
    }

    updateauth(): void { }

    deleteauth(): void { }

    linkauth(): void { }

    unlinkauth(): void { }

    canceldelay(): void { }

    onerror(): void { }
}