/**
 * @author fanliangqin@ultrain.io
 */
import "../../lib/alias";
import { Contract } from "../../src/contract";
import { Asset, SymbolType } from "../../src/asset";
import { requireAuth } from "../../lib/action";
import { ultrain_assert } from "../../lib/system";
import { DataStream } from "../../utils/datastream";

class Account {
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

class CurrencyStats {
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

export class Token extends Contract {
    constructor(self: account_name) {
        // super();
        this.self = self;
    }

    public create(issuer: account_name, maximum_supply: Asset, issuer_can_freeze: u8, issuer_can_recall: u8, issuer_can_whitelist: u8,): void {
        requireAuth(this.self);
        let sym: SymbolType = maximum_supply.symbol;
        ultrain_assert(sym.is_valid(), "invalid symbol name.");
        // TODO(liangqin.fan)
    }

    public issue(to: account_name, quantity: Asset, memo: string): void {
        let sym: SymbolName = quantity.symbol.name();
    }

    public transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void {

    }

    private sub_balance(owner: account_name, value: Asset, st: CurrencyStats): void {

    }

    private add_balance(owner: account_name, value: Asset, st: CurrencyStats, ram_payer: account_name): void {

    }
}