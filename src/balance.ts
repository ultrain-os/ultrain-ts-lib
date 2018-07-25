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
import { PermissionLevel } from "./permission-level";
import { TransferParams, dispatchInline } from "./action";
import { NEX } from "./name_ex";
import { Log } from "./log";

export class Account implements ISerializable {
    balance: Asset;

    constructor(blc: Asset = new Asset()) {
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

    constructor(supply: Asset = new Asset(), max_supply: Asset = new Asset(), issuer: u64 = 0) {
        Log.s("currency constructor. 1").flush();
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
    let act: Account = new Account();
    let existing = accounts.get(SYS_NAME, act);

    return existing ? act.balance : new Asset(0, SYS);
}

export function send(from: account_name, to: account_name, quantity: Asset, memo: string): void {
    let pl: PermissionLevel = new PermissionLevel();
    pl.actor = from;
    pl.permission = N("active");
    let params = new TransferParams();
    params.from = from;
    params.to = to;
    params.quantity = quantity;
    params.memo = memo;
    // params.quantity.prints("before dispatchInline");
    dispatchInline(pl, N("utrio.token"), NEX("transfer"), params);
}