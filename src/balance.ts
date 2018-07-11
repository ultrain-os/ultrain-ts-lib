/**
 * @author fanliangqin@ultrain.io
 * @datetime 15:46:43, 07/06/2018
 * All rights reserved by ultrain.io @2018
 */

import { ISerializable } from "../lib/ISerializable";
import { Asset, StringToSymbol } from "./asset";
import { DataStream } from "./datastream";
import { DBManager } from "./dbmanager";
import { N } from "./utils";

export class Account implements ISerializable {
    balance: Asset;

    constructor(blc: Asset = null) {
        if (blc == null) blc = new Asset();

        this.balance = blc;
    }

    primaryKey(): u64 { return this.balance.symbolName(); }

    deserialize(ds: DataStream): void {
        this.balance.deserialize(ds);
    }

    serialize(ds: DataStream): void {
        this.balance.serialize(ds);
    }
}

export class CurrencyStats implements ISerializable {
    supply: Asset;
    max_supply: Asset;
    issuer: account_name;

    constructor(supply: Asset = null, max_supply: Asset = null, issuer: u64 = 0) {
        if (supply == null) supply = new Asset();
        if (max_supply == null) max_supply = new Asset();
        this.supply = supply;
        this.max_supply = max_supply;
        this.issuer = issuer;
    }

    primaryKey(): u64 { return this.supply.symbolName(); }

    deserialize(ds: DataStream): void {
        this.supply.deserialize(ds);
        this.max_supply.deserialize(ds);
        this.issuer = ds.read<account_name>();
    }

    serialize(ds: DataStream): void {
        this.supply.serialize(ds);
        this.max_supply.serialize(ds);
        ds.write<account_name>(this.issuer);
    }
}

class TransferArgs {
    from: account_name;
    to: account_name;
    quantity: Asset;
    memo: string;
}

let SYS: u64 = StringToSymbol(4, "UGS");
let SYS_NAME: u64 = <u64>(SYS >> 8);

export function queryBalance(owner: account_name): Asset {
    let accounts: DBManager<Account> = new DBManager<Account>(N("accounts"), N("utrio.token"), owner);
    let act: Account = new Account(null);
    let existing = accounts.get(SYS_NAME, act);

    return existing ? act.balance : new Asset(0, SYS);
}
