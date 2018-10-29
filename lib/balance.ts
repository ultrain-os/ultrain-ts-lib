/**
 * @author fanliangqin@ultrain.io
 * @datetime 15:46:43, 07/06/2018
 * All rights reserved by ultrain.io @2018
 */

import { Asset, SYS_NAME, SYS } from "../src/asset";
import { PermissionLevel } from "./permission-level";
import { TransferParams, dispatchInline } from "../src/action";
import { NEX } from "./name_ex";
import { NAME } from "../src/account";
/**
 * class CurrencyAccount for Token system.
 *
 * @class CurrencyAccount
 */
export class CurrencyAccount implements Serializable {
    balance: Asset;

    constructor(blc: Asset) {
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
/**
 * class CurrencyStats for Token system.
 *
 * @class CurrencyStats
 */
export class CurrencyStats implements Serializable {
    supply: Asset;
    max_supply: Asset;
    issuer: account_name;
    timestamp: u64;

    constructor(supply: Asset, max_supply: Asset, issuer: account_name, time: u64 = 0) {
        this.max_supply = max_supply;
        this.supply = supply;
        this.issuer = issuer;
        this.timestamp = time;
    }

    primaryKey(): u64 { return this.supply.symbolName(); }

    deserialize(ds: DataStream): void {
        this.supply.deserialize(ds);
        this.max_supply.deserialize(ds);
        this.issuer = ds.read<account_name>();
        this.timestamp = ds.read<u64>();
    }

    serialize(ds: DataStream): void {
        this.supply.serialize(ds);
        this.max_supply.serialize(ds);
        ds.write<account_name>(this.issuer);
        ds.write<u64>(this.timestamp);
    }
}

/**
 * to query the balance of an account from Ultrain Token system.
 * @param owner account name to be queried.
 *
 * @returns Asset
 *
 * @function queryBalance
 */
export function queryBalance(owner: account_name): Asset {
    let accounts: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME("accounts"), NAME("utrio.token"), owner);
    let act: CurrencyAccount = new CurrencyAccount(new Asset());
    let existing = accounts.get(SYS_NAME, act);

    return existing ? act.balance : new Asset(0, SYS);
}
/**
 * to send Token of UGS from an account to another.
 * @param from from account
 * @param to to account
 * @param quantity Asset to send.
 * @param memo a string message
 *
 * @function send
 */
export function send(from: account_name, to: account_name, quantity: Asset, memo: string): void {

    // Action.requireAuth(from);
    let pl: PermissionLevel = new PermissionLevel();
    pl.actor = from;
    pl.permission = NAME("active");
    let params = new TransferParams(from, to, quantity, memo);
    // params.quantity.prints("before dispatchInline");
    dispatchInline(pl, NAME("utrio.token"), NEX("transfer"), params);
}