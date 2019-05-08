/**
 * @author fanliangqin@ultrain.io
 * @datetime 15:46:43, 07/06/2018
 * All rights reserved by ultrain.io @2018
 */

import { Asset, SYS_NAME, SYS } from "../src/asset";
import { NAME } from "../src/account";
import { env as cpt } from "../internal/crypto.d";
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

    constructor() {
        this.max_supply = new Asset();
        this.supply = new Asset();
        this.issuer = 0;
        this.timestamp = 0;
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
    let accounts: DBManager<CurrencyAccount> = DBManager.newInstance<CurrencyAccount>(NAME("accounts"), NAME("utrio.token"), owner);
    let act: CurrencyAccount = new CurrencyAccount(new Asset());
    let existing = accounts.get(SYS_NAME, act);
    return existing ? act.balance : new Asset(0, SYS);
}
