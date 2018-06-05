/**
 * @author fanliangqin@ultrain.io
 */

import "../../lib/types.d";

import { ISerializable, Contract } from "../../src/contract";
import { PermissionLevel } from "../../src/permission-level";
import { DataStream } from "../../src/datastream";
import { PublicKey, Checksum256, NameSuffix } from "../../src/types";
import { DBManager } from "../../src/dbmanager";
import { UserResources } from "./structs";
import { N, ultrain_assert } from "../../src/utils";
import { env as ultrain } from "../../src/ultrain-lib";


declare type bytes = Array<u8>;

export class PermissionLevelWeight implements ISerializable {
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
}

export class KeyWeight implements ISerializable {
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
}

export class Authority implements ISerializable {
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
 * BlockHeader is not used yet, let it go temply.
 */
// class BlockHeader implements ISerializable {
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
                    // TODO(liangqin): DBManager需要有sedondary支持， 怎么弄？？？？？？？
                } else {
                    ultrain_assert(creator == suffix, "native.newaccount: only suffix may create this account.");
                }
            }
        }

        let userres = new DBManager<UserResources>(N("userres"), this.receiver, newact);
        let res = new UserResources();
        res.owner = newact;
        userres.emplace(newact, res);

        ultrain.set_resource_limits(newact, 0, 0, 0);
    }

    updateauth(): void { }

    deleteauth(): void { }

    linkauth(): void { }

    unlinkauth(): void { }

    canceldelay(): void { }

    onerror(): void { }
}