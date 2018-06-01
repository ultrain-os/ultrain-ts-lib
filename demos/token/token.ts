/**
 * @author fanliangqin@ultrain.io
 */
import "../../src/alias";
import { Contract, ISerializable } from "../../src/contract";
import { Asset } from "../../src/asset";
import { ultrain_assert, N } from "../../src/utils";
import { env as ultrain } from "../../src/ultrain-lib";
import { DataStream } from "../../src/datastream";
import { DBManager } from "../../src/dbmanager";
import { Log } from "../../src/log";
import { TransferParams, dispatchInline } from "../../src/action";
import { PermissionLevel } from "../../src/permission-level";

class Account implements ISerializable {
    balance: Asset;
    frozen: boolean = false;
    whitelist: boolean = true;

    constructor(blc: Asset = null, frozen: boolean = false, whitelist: boolean = true) {
        if (blc == null) blc = new Asset();

        this.balance = blc;
        this.frozen = frozen;
        this.whitelist = whitelist;
    }

    primaryKey(): u64 { return this.balance.getSymbol(); }

    deserialize(ds: DataStream): void {
        this.balance.deserialize(ds);
        this.frozen = (ds.read<u8>() != 0);
        this.whitelist = (ds.read<u8>() != 0);
    }

    serialize(ds: DataStream): void {
        this.balance.serialize(ds);
        ds.write<u8>(this.frozen);
        ds.write<u8>(this.whitelist);
    }
}

class CurrencyStats implements ISerializable {
    supply: Asset;
    max_supply: Asset;
    issuer: u64;
    can_freeze: boolean = true;
    can_recall: boolean = true;
    can_whitelist: boolean = true;
    is_frozen: boolean = false;
    enforce_whitelist: boolean = false;

    constructor(supply: Asset = null, max_supply: Asset = null, issuer: u64 = 0,
                can_freeze: boolean = false, can_recall: boolean = false,
                can_whitelist: boolean = false, is_frozen: boolean = false, enforce_whitelist: boolean = false) {
        if (supply == null) supply = new Asset();
        if (max_supply == null) max_supply = new Asset();
        this.supply = supply;
        this.max_supply = max_supply;
        this.issuer = issuer;
        this.can_freeze = can_freeze;
        this.can_recall = can_recall;
        this.can_whitelist = can_whitelist;
        this.is_frozen = is_frozen;
        this.enforce_whitelist = enforce_whitelist;
    }

    primaryKey(): u64 { return this.supply.getSymbol(); }

    deserialize(ds: DataStream): void {
        this.supply.deserialize(ds);
        this.max_supply.deserialize(ds);
        this.issuer = ds.read<u64>();
        this.can_freeze = (ds.read<u8>() != 0);
        this.can_recall = (ds.read<u8>() != 0);
        this.can_whitelist = (ds.read<u8>() != 0);
        this.is_frozen = (ds.read<u8>() != 0);
        this.enforce_whitelist = (ds.read<u8>() != 0);
    }

    serialize(ds: DataStream): void {
        this.supply.serialize(ds);
        this.max_supply.serialize(ds);
        ds.write<u64>(this.issuer);
        ds.write<u8>(this.can_freeze);
        ds.write<u8>(this.can_recall);
        ds.write<u8>(this.can_whitelist);
        ds.write<u8>(this.is_frozen);
        ds.write<u8>(this.enforce_whitelist);
    }
}

const STATSTABLE: string = "stat";
const ACCOUNTTABLE: string = "accounts";

export class Token extends Contract {

    public create(issuer: account_name, maximum_supply: Asset, issuer_can_freeze: boolean, issuer_can_recall: boolean, issuer_can_whitelist: boolean ): void {
        ultrain.require_auth(this.receiver);
        let sym = maximum_supply.symbolName();
        ultrain_assert(maximum_supply.isSymbolValid(), "Token.create: invalid symbol name.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, sym);
        let cs: CurrencyStats = new CurrencyStats(null, null, 0, false, false, false, false, false);

        let existing = statstable.get(sym, cs);
        ultrain_assert(!existing, "token with symbol already exists.");

        cs.supply.setSymbol(maximum_supply.getSymbol());
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        cs.can_freeze = issuer_can_freeze;
        cs.can_recall = issuer_can_recall;
        cs.can_whitelist = issuer_can_whitelist;
        statstable.emplace(this.receiver, cs);

    }

    public issue(to: account_name, quantity: Asset, memo: string): void {
        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(null, null, 0, false, false, false, false, false);
        let existing = statstable.get(quantity.getSymbol(), st);

        ultrain_assert(existing, "token.issue symbol name is not exist.");


        ultrain.require_auth(st.issuer);

        ultrain_assert(quantity.isValid(), "invalid quantity.");
        ultrain_assert(quantity.getAmount() > 0, "must issue positive quantity.");

        let amount = st.supply.getAmount() + quantity.getAmount();
        st.supply.setAmount(amount);

        statstable.modify(st, 0);
        this.addBalance(st.issuer, quantity, st, st.issuer);

        if (to != st.issuer) {
            let pl: PermissionLevel = new PermissionLevel();
            pl.actor = st.issuer;
            pl.permission = N("active");

            let params = new TransferParams();
            params.from = st.issuer;
            params.to = to;
            params.quantity = quantity;
            params.memo = memo;

            params.quantity.prints("before dispatchInline");
            dispatchInline(pl, this.receiver, N("transfer"), params);
        }
    }

    public transfer(from: u64, to: u64, quantity: Asset, memo: string): void {
        Log.s("Transfer: ").i(from, 16).s("     ").i(to, 16).s("     ").s(memo).flush();
        quantity.prints("Transfer");

        ultrain.require_auth(from);

        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(null, null, 0, false, false, false, false, false);
        let existing = statstable.get(quantity.getSymbol(), st);

        ultrain_assert(existing, "token.transfer symbol name is not exist.");

        ultrain.require_recipient(to);
        ultrain.require_recipient(from);

        ultrain_assert(quantity.isValid(), "invalid quantity.");
        ultrain_assert(quantity.getAmount() > 0, "must transfer positive quantity.");

        this.subBalance(from, quantity, st);
        this.addBalance(to, quantity, st, from);
    }

    private subBalance(owner: u64, value: Asset, st: CurrencyStats): void {
        let ats: DBManager<Account> = new DBManager<Account>(N(ACCOUNTTABLE), this.receiver, owner);
        let from: Account = new Account(null, false, false);
        let existing = ats.get(value.getSymbol(), from);

        ultrain_assert(existing, "token.subBalance from account is not exist.");
        ultrain_assert(from.balance.getAmount() >= value.getAmount(), "overdrawing balance.");

        if (ultrain.has_auth(owner)) {
            ultrain_assert(!st.can_freeze || !from.frozen, "account is frozen by issuer.");
            ultrain_assert(!st.can_freeze || !st.is_frozen, "all transfrers are frozen by issuer.");
            ultrain_assert(!st.enforce_whitelist || from.whitelist, "account is not whitelist.");
        } else if (ultrain.has_auth(st.issuer)) {
            ultrain_assert(st.can_recall, "issuer may not recall token.");
        } else {
            ultrain_assert(false, "insufficient authority.");
        }
        let amount = from.balance.getAmount() - value.getAmount();
        from.balance.setAmount(amount);
        ats.modify(from, owner);
    }

    private addBalance(owner: u64, value: Asset, st: CurrencyStats, ram_payer: u64): void {
        let toaccount: DBManager<Account> = new DBManager<Account>(N(ACCOUNTTABLE), this.receiver, owner);
        let to: Account = new Account(null, false, false);
        let existing = toaccount.get(value.getSymbol(), to);

        if (!existing) {
            ultrain_assert(!st.enforce_whitelist, "can only transfer to white listed accounts.");
            let a: Account = new Account(value, false, false);
            toaccount.emplace(ram_payer, a);
        } else {
            ultrain_assert(!st.enforce_whitelist || to.whitelist, "receiver requires whitelist by issuer.");
            let amount = to.balance.getAmount() + value.getAmount();
            to.balance.setAmount(amount);
            toaccount.modify(to, 0);
        }
    }
}