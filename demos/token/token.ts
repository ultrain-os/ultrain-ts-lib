/**
 * @author fanliangqin@ultrain.io
 */
import "../../lib/alias";
import { Contract } from "../../src/contract";
import { Asset, SymbolType } from "../../src/asset";
import { requireAuth } from "../../lib/action";
import { ultrain_assert } from "../../lib/system";

class Account {
    balance: Asset;
    frozen: boolean = false;
    whitelist: boolean = true;

    public primaryKey(): u64 { return this.balance.symbol; }
}

class CurrencyStats {
    supply: Asset;
    max_supply: Asset;
    issuer: account_name;
    can_freeze: boolean = true;
    can_recall: boolean = true;
    can_whitelist: boolean = true;
    is_frozen: boolean = false;
    enforce_whitelist: boolean = false;

    public primaryKey(): u64 { return this.supply.symbol.name(); }
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