/**
 * @author fanliangqin@ultrain.io
 */
import "../../internal/alias.d";
import { Contract } from "../../lib/contract";
import { ISerializable } from "../../lib/ISerializable";
import { Asset } from "../../src/asset";
import { ultrain_assert, N } from "../../src/utils";
import { DataStream } from "../../src/datastream";
import { DBManager } from "../../src/dbmanager";
import { TransferParams, dispatchInline } from "../../src/action";
import { PermissionLevel } from "../../src/permission-level";
import { env as action } from "../../internal/action.d";

class Account implements ISerializable {
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

class CurrencyStats implements ISerializable {
    supply: Asset;
    max_supply: Asset;
    issuer: u64;

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
        this.issuer = ds.read<u64>();
    }

    serialize(ds: DataStream): void {
        this.supply.serialize(ds);
        this.max_supply.serialize(ds);
        ds.write<u64>(this.issuer);
    }
}

class TransferArgs {
    from: account_name;
    to: account_name;
    quantity: Asset;
    memo: string;
}

const STATSTABLE: string = "stat";
const ACCOUNTTABLE: string = "accounts";

export class Token extends Contract {

    public create(issuer: account_name, maximum_supply: Asset): void {
        action.require_auth(this.receiver);
        let sym = maximum_supply.symbolName();
        ultrain_assert(maximum_supply.isSymbolValid(), "token.create: invalid symbol name.");
        ultrain_assert(maximum_supply.isValid(), "token.create: invalid supply.");

        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, sym);
        let cs: CurrencyStats = new CurrencyStats(null, null, 0);

        let existing = statstable.get(sym, cs);
        ultrain_assert(!existing, "token with symbol already exists.");

        cs.supply.setSymbol(maximum_supply.getSymbol());
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        statstable.emplace(this.receiver, cs);
    }

    @action
    public issue(to: account_name, quantity: Asset, memo: string): void {
        ultrain_assert(quantity.isSymbolValid(), "token.issue: invalid symbol name");
        ultrain_assert(memo.length <= 256, "token.issue: memo has more than 256 bytes.");

        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(null, null, 0);
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.issue: symbol name is not exist.");


        action.require_auth(st.issuer);
        ultrain_assert(quantity.isValid(), "token.issue: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.max_supply.getSymbol(), "token.issue: symbol precision mismatch.");
        ultrain_assert(quantity.getAmount() <= st.max_supply.getAmount() - st.supply.getAmount(), "token.issue: quantity exceeds available supply.");

        let amount = st.supply.getAmount() + quantity.getAmount();
        st.supply.setAmount(amount);
        statstable.modify(st, 0);
        this.addBalance(st.issuer, quantity, st.issuer);
        if (to != st.issuer) {
            let pl: PermissionLevel = new PermissionLevel();
            pl.actor = st.issuer;
            pl.permission = N("active");
            let params = new TransferParams();
            params.from = st.issuer;
            params.to = to;
            params.quantity = quantity;
            params.memo = memo;
            // params.quantity.prints("before dispatchInline");
            dispatchInline(pl, this.receiver, N("transfer"), params);
        }
    }

    public transfer(from: u64, to: u64, quantity: Asset, memo: string): void {
        // Log.s("Transfer: ").i(from, 16).s("     ").i(to, 16).s("     ").s(memo).flush();
        // quantity.prints("Transfer");
        ultrain_assert(from != to, "token.transfer: cannot transfer to self.");
        action.require_auth(from);
        ultrain_assert(action.is_account(to), "token.transfer: to account does not exist.");

        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(null, null, 0);
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.transfer symbol name is not exist.");

        action.require_recipient(from);
        action.require_recipient(to);

        ultrain_assert(quantity.isValid(), "token.transfer: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.supply.getSymbol(), "token.transfer: symbol precision mismatch.");
        ultrain_assert(memo.length <= 256, "token.transfer: memo has more than 256 bytes.");

        this.subBalance(from, quantity);
        this.addBalance(to, quantity, from);
    }

    private subBalance(owner: u64, value: Asset): void {
        let ats: DBManager<Account>= new DBManager<Account>(N(ACCOUNTTABLE), this.receiver, owner);
        let from: Account = new Account(null);
        let existing = ats.get(value.symbolName(), from);

        ultrain_assert(existing, "token.subBalance: from account is not exist.");
        ultrain_assert(from.balance.getAmount() >= value.getAmount(), "token.subBalance: overdrawing balance.");

        if (from.balance.getAmount() == value.getAmount()) {
            ats.erase(from);
        } else {
            let amount = from.balance.getAmount() - value.getAmount();
            from.balance.setAmount(amount);
            ats.modify(from, owner);
        }
    }

    private addBalance(owner: u64, value: Asset, ram_payer: u64): void {
        let toaccount: DBManager<Account>= new DBManager<Account>(N(ACCOUNTTABLE), this.receiver, owner);
        let to: Account = new Account(null);
        let existing = toaccount.get(value.symbolName(), to);

        if (!existing) {
            let a: Account = new Account(value);
            toaccount.emplace(ram_payer, a);
        } else {
            let amount = to.balance.getAmount() + value.getAmount();
            to.balance.setAmount(amount);
            toaccount.modify(to, 0);
        }
    }

 
    public getSupply(symname: symbol_name): Asset {
        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, symname);
        let st = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "getSupply failed, states is not existed.");
        return st.supply;
    }

    public getBalance(owner: account_name, symname: symbol_name): Asset {
        let accounts: DBManager<Account>= new DBManager<Account>(N(ACCOUNTTABLE), owner, symname);
        let account = new Account();
        let existing = accounts.get(symname, account);
        ultrain_assert(existing, "getBalance failed, account is not existed.")

        return account.balance;
    }
}