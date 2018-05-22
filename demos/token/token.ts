/**
 * @author fanliangqin@ultrain.io
 */
import "../../lib/alias";
import { Contract } from "../../src/contract";
import { Asset, SymbolType, SymbolName } from "../../src/asset";
import { requireAuth, requireRecipient, hasAuth } from "../../lib/action";
import { ultrain_assert } from "../../lib/system";
import { DataStream } from "../../utils/datastream";
import { ISerializer } from "../../utils/serializer";
import { DBManager, TObjOperator } from "../../src/dbmanager";
import { N } from "../../lib/name";

class Account extends ISerializer {
    public balance: Asset;
    public frozen: boolean = false;
    public whitelist: boolean = true;

    public primaryKey(): u64 { return this.balance.symbol; }

    public serialize(s: DataStream): void {
        this.balance.serialize(s);
        s.serializebool(this.frozen);
        s.serializebool(this.whitelist);
    }

    public deserialize(s: DataStream): void {
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

    public primaryKey(): u64 { return this.supply.symbol.name(); }

    public serialize(s: DataStream): void {
        this.supply.serialize(s);
        this.max_supply.serialize(s);
        s.serialize64(this.issuer);
        s.serializebool(this.can_freeze);
        s.serializebool(this.can_recall);
        s.serializebool(this.can_whitelist);
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

    public create(issuer: account_name, maximum_supply: Asset, issuer_can_freeze: u8, issuer_can_recall: u8, issuer_can_whitelist: u8, ): void {
        requireAuth(this.self);
        let sym: SymbolType = maximum_supply.symbol;
        ultrain_assert(sym.is_valid(), "invalid symbol name.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.self, sym.name());
        ultrain_assert(statstable.find(sym.name()) != null, "token with symbol already exists.");
        let updater: TObjOperator<CurrencyStats> = function (cs: CurrencyStats): void {
            cs.supply.symbol = maximum_supply.symbol;
            cs.max_supply = maximum_supply;
            cs.issuer = issuer;
            cs.can_freeze = issuer_can_freeze;
            cs.can_recall = issuer_can_recall;
            cs.can_whitelist = issuer_can_whitelist;
        };

        statstable.emplace(this.self, updater);
    }

    public issue(to: account_name, quantity: Asset, memo: string): void {
        let symname: SymbolName = quantity.symbol.name();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.self, symname);
        let st: CurrencyStats = statstable.get(symname);

        requireAuth(st.issuer);
        ultrain_assert(quantity.isValid(), "invalid quantity.");
        ultrain_assert(quantity.amount > 0, "must issue positive quantity.");

        let updater: TObjOperator<CurrencyStats> = function (st: CurrencyStats): void {
            st.supply.amount += quantity.amount;
        };

        this.add_balance(st.issuer, quantity, st, st.issuer);

        if (to != st.issuer) {
            // TODO(fanliangqin): dispatch_inline;
        }
    }

    public transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void {
        requireAuth(from);

        let symname: SymbolName = quantity.symbol.name();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.self, symname);
        let st: CurrencyStats = statstable.get(symname);

        requireRecipient(from);
        requireRecipient(to);

        ultrain_assert(quantity.isValid(), "invalid quantity.");
        ultrain_assert(quantity.amount > 0, "must transfer positive quantity.");

        this.sub_balance(from, quantity, st);
        this.add_balance(to, quantity, st, from);
    }

    private sub_balance(owner: account_name, value: Asset, st: CurrencyStats): void {
        let accounts: DBManager<Account> = new DBManager(N(ACCOUNTTABLE), this.self, owner);
        let from: Account = accounts.get(value.symbol.name());
        ultrain_assert(from.balance.amount >= value.amount, "overdrawing balance.");

        if (hasAuth(owner)) {
            ultrain_assert( !st.can_freeze || !from.frozen, "account is frozen by issuer.");
            ultrain_assert( !st.can_freeze || !st.is_frozen, "all transfrers are frozen by issuer.");
            ultrain_assert( !st.enforce_whitelist || from.whitelist, "account is not whitelist.");
        } else if (hasAuth(st.issuer)) {
            ultrain_assert( st.can_recall, "issuer may not recall token.");
        } else {
            ultrain_assert( false, "insufficient authority.");
        }

        let updater: TObjOperator<Account> = function(a: Account): void {
            a.balance.amount -= value.amount;
        }

        accounts.modify(from, owner, updater);
    }

    private add_balance(owner: account_name, value: Asset, st: CurrencyStats, ram_payer: account_name): void {
        let toaccount: DBManager<Account> = new DBManager<Account>(N(ACCOUNTTABLE), this.self, owner);
        let to: Account = toaccount.find(value.symbol.name());
        if (to == null) {
            ultrain_assert( !st.enforce_whitelist, "can only transfer to white listed accounts.");
            let constor: TObjOperator<Account> = function(a: Account): void {
                a.balance = value;
            };
            toaccount.emplace(ram_payer, constor);
        } else {
            ultrain_assert( !st.enforce_whitelist || to.whitelist, "receiver requires whitelist by issuer.");
            let updater: TObjOperator<Account> = function(a: Account): void {
                a.balance.amount += value.amount;
            };
            toaccount.modify(to, 0, updater);
        }
    }
}