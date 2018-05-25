/**
 * @author fanliangqin@ultrain.io
 */
import "../../lib/alias";
import { Contract } from "../../src/contract";
import { Asset, SymbolType } from "../../src/asset";
import { requireAuth, requireRecipient, hasAuth } from "../../lib/action";
import { ultrain_assert } from "../../lib/system";
import { DataStream } from "../../utils/datastream";
import { ISerializer } from "../../utils/serializer";
import { DBManager } from "../../src/dbmanager";
import { N } from "../../lib/name";
import { Log } from "../../lib/log";

class Account extends ISerializer {
    public balance: Asset;
    public frozen: boolean = false;
    public whitelist: boolean = true;

    constructor() {}

    public primaryKey(): u64 { return this.balance.symbol; }

    public serialize(s: DataStream): void {
        this.balance.serialize(s);
        s.serializebool(this.frozen);
        s.serializebool(this.whitelist);
    }

    public deserialize(s: DataStream): void {
        Log.s("Account start to deserialize.").flush();
        this.balance.deserialize(s);
        this.frozen = s.deserializebool();
        this.whitelist = s.deserializebool();
    }
}

class CurrencyStats extends ISerializer {
    public supply: Asset;
    public max_supply: Asset;
    public issuer: account_name;
    public can_freeze: boolean = true;
    public can_recall: boolean = true;
    public can_whitelist: boolean = true;
    public is_frozen: boolean = false;
    public enforce_whitelist: boolean = false;

    constructor() {}

    public primaryKey(): u64 { return this.supply.symbol.name(); }

    public serialize(s: DataStream): void {
        this.supply.serialize(s);
        this.max_supply.serialize(s);
        s.serialize64(this.issuer);
        s.serializebool(this.can_freeze);
        s.serializebool(this.can_recall);
        s.serializebool(this.can_whitelist);s
        s.serializebool(this.is_frozen);
        s.serializebool(this.enforce_whitelist);
    }

    public deserialize(s: DataStream): void {
        this.supply.deserialize(s);
        this.max_supply.deserialize(s);
        this.issuer = s.deserialize64();
        this.can_freeze = s.deserializebool();
        this.can_recall = s.deserializebool();
        this.can_whitelist = s.deserializebool();
        this.is_frozen = s.deserializebool();
        this.enforce_whitelist = s.deserializebool();
    }
}

const STATSTABLE: string = "stat";
const ACCOUNTTABLE: string = "accounts";

export class Token extends Contract {

    constructor(self: account_name) {
        // super();
        this.self = self;
    }

    public create(issuer: account_name, maximum_supply: Asset, issuer_can_freeze: boolean, issuer_can_recall: boolean, issuer_can_whitelist: boolean, ): void {
        requireAuth(this.self);
        let sym: SymbolType = maximum_supply.symbol;
        ultrain_assert(sym.is_valid(), "Token.create: invalid symbol name.");
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.self, sym.name());
        let cs: CurrencyStats = statstable.get(sym.name());

        ultrain_assert( !cs.inited, "token with symbol already exists.");

        cs.supply.symbol = sym;
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        cs.can_freeze = issuer_can_freeze;
        cs.can_recall = issuer_can_recall;
        cs.can_whitelist = issuer_can_whitelist;

        statstable.emplace(this.self, cs, sym.name());
    }

    public issue(to: account_name, quantity: Asset, memo: string): void {
        let symname: SymbolName = quantity.symbol.name();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.self, symname);
        let st: CurrencyStats = statstable.get(symname);

        ultrain_assert(st.inited, "token.issue symbol name is not exist.");

        requireAuth(st.issuer);

        ultrain_assert(quantity.isValid(), "invalid quantity.");
        ultrain_assert(quantity.amount > 0, "must issue positive quantity.");

        st.supply.amount += quantity.amount;

        statstable.modify(st, 0);
        this.add_balance(st.issuer, quantity, st, st.issuer);
        Log.s("issue  3").flush();
        if (to != st.issuer) {
            // TODO(fanliangqin): dispatch_inline;
            Log.s("issue function run here, should call dispatch_inline.").flush();
        }
    }

    public transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void {
        requireAuth(from);

        let symname: SymbolName = quantity.symbol.name();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.self, symname);
        let st: CurrencyStats = statstable.get(symname);

        ultrain_assert(st.inited, "token.transfer symbol name is not exist.");

        requireRecipient(from);
        requireRecipient(to);

        ultrain_assert(quantity.isValid(), "invalid quantity.");
        ultrain_assert(quantity.amount > 0, "must transfer positive quantity.");

        this.sub_balance(from, quantity, st);
        this.add_balance(to, quantity, st, from);
    }

    private sub_balance(owner: account_name, value: Asset, st: CurrencyStats): void {
        let ats: DBManager<Account> = new DBManager<Account>(N(ACCOUNTTABLE), this.self, owner);
        let from: Account = ats.get(value.symbol.name());

        ultrain_assert(from.inited, "token.sub_balance from account is not exist.");
        ultrain_assert(from.balance.amount >= value.amount, "overdrawing balance.");

        if (hasAuth(owner)) {
            ultrain_assert(!st.can_freeze || !from.frozen, "account is frozen by issuer.");
            ultrain_assert(!st.can_freeze || !st.is_frozen, "all transfrers are frozen by issuer.");
            ultrain_assert(!st.enforce_whitelist || from.whitelist, "account is not whitelist.");
        } else if (hasAuth(st.issuer)) {
            ultrain_assert(st.can_recall, "issuer may not recall token.");
        } else {
            ultrain_assert(false, "insufficient authority.");
        }

        from.balance.amount -= value.amount;
        ats.modify(from, owner);
    }

    private add_balance(owner: account_name, value: Asset, st: CurrencyStats, ram_payer: account_name): void {
        let toaccount: DBManager<Account> = new DBManager<Account>(N(ACCOUNTTABLE), this.self, owner);
        let to: Account = toaccount.get(value.symbol.name());

        if (!to.inited) {
            ultrain_assert(!st.enforce_whitelist, "can only transfer to white listed accounts.");
            let a: Account = new Account();
            a.balance = value;
            toaccount.emplace(ram_payer, a, a.balance.symbol.name());
        } else {
            ultrain_assert(!st.enforce_whitelist || to.whitelist, "receiver requires whitelist by issuer.");
            to.balance.amount += value.amount;
            toaccount.modify(to, 0);
        }
    }
}