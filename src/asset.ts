/**
 * @author fanliangqin@ultrain.io
 */
import "../lib/alias";
import { printString, printStringL, printInt } from "../lib/utils";
import { ultrain_assert } from "../lib/system";
import { CHARCODE } from "../lib/utils";
import { Log } from "../lib/log";
import { DataStream } from "../utils/datastream";

const CHARA: u8 = 0x41;
const CHARZ: u8 = 0x5A;

function string_to_symbol(precision: u8, str: string): u64 {
    let len: u32 = str.length;
    let result: u64 = 0;
    for (let i: u32 = 0; i < len; ++i) {
        let charCode: u8 = <u8>(str.charCodeAt(i) & 0xff);
        if (charCode < CHARA || charCode > CHARZ) {
            Log.s("string_to_symbol failed for not supoort code : ").i(charCode, 16).flush();
        } else {
            result |= <u64>(charCode << (8 * (i + 1)));
        }
    }

    result |= <u64>precision;
    return result;
}

function is_valid_symbol(sym: SymbolName): boolean {
    // TODO(fanliangqin): 好像这个实现有点问题，移位操作超出了64位范围？？ 需要重新check
    sym >>= 8;
    for (let i: i32 = 0; i < 7; ++i) {
        let c: u8 = <u8>(sym & 0xff);
        if (!(CHARA <= c && c <= CHARZ)) return false;
        sym >>= 8;
        if ((sym & 0xff) == 0) {
            do {
                sym >>= 8;
                if ((sym & 0xff) != 0) return false;
                ++i;
            } while (i < 7);
        }
    }
    return true;
}

function SymbolNameLength(tmp: SymbolName): u32 {
    tmp >>= 8; // skip precision
    let length: u32 = 0;
    while ((tmp & 0xff) != 0 && length <= 7) {
        ++length;
        tmp >>= 8;
    }

    return length;
}

export class SymbolType {
    private value: SymbolName;

    public is_valid(): boolean { return is_valid_symbol(this.value); }
    public precision(): u64 { return this.value & 0xff; }
    public name(): u64 { return this.value >> 8; }
    public name_length(): u32 { return SymbolNameLength(this.value); }

    public get(): SymbolName { return this.value; }

    public print(show_precision: boolean = true): void {
        if (show_precision) {
            Log.i(this.precision()).s(",");
        }

        let sym: SymbolName = this.value;
        sym >>= 8;
        for (let i: i32 = 0; i < 7; ++i) {
            let c: u8 = <u8>(sym & 0xff);
            if (c == 0) break;
            Log.i(c);
            sym >>= 8;
        }
        Log.flush();
    }

    public serialize(s: DataStream): void {
        s.serialize64(this.value);
    }

    public deserialize(s: DataStream): void {
        this.value = s.deserialize64();
    }
}

export class ExtendSymbol extends SymbolType {
    contract: account_name;
    constructor(s: SymbolName = 0, c: account_name = 0) {
        // super();
        this.value = s;
        this.contract = c;
    }

    print(): void {
        super.print();
        printString("@");
        printInt(this.contract);
    }

    equal(es: ExtendSymbol): boolean {
        return this.value == es.value && this.contract == es.contract;
    }
}

export class Asset {
    static max_amount: i64 = (1 << 62) - 1;
    public amount: i64;
    public symbol: SymbolType;

    constructor(amount: i64 = 0, s: SymbolName = string_to_symbol(4, "UTR")) {
        ultrain_assert(this.isAmountWithinRange(), "magnitude of asset amount must be less than 2^62");
        ultrain_assert(this.symbol.is_valid(), "invalid symbol name");
    }

    public isAmountWithinRange(): boolean {
        return -Asset.max_amount <= this.amount && this.amount <= Asset.max_amount;
    }

    public isValid(): boolean { return this.isAmountWithinRange() && this.symbol.is_valid(); }

    public setAmount(a: i64): void {
        this.amount = a;
        ultrain_assert(this.isAmountWithinRange(), " magnitude of asset amount must be less than 2^62");
    }
    /**
     * symentic of ==
     * @param asset rhs operator
     */
    public equal(asset: Asset): boolean {
        ultrain_assert(asset.symbol == this.symbol, "comparison of assets with different symbols is not allowed.");
        return this.amount == asset.amount;
    }
    /**
     * symentic of <
     * @param asset rhs
     */
    public lt(asset: Asset): boolean {
        ultrain_assert(asset.symbol == this.symbol, "comparison of assets with different symbols is not allowed.");
        return this.amount < asset.amount;
    }
    /**
     * symentic of <=
     * @param asset rhs
     */
    public lte(asset: Asset): boolean {
        ultrain_assert(asset.symbol == this.symbol, "comparison of assets with different symbols is not allowed.");
        return this.amount <= asset.amount;
    }
    /**
     * symentic of >
     * @param asset rhs
     */
    public gt(asset: Asset): boolean {
        ultrain_assert(asset.symbol == this.symbol, "comparison of assets with different symbols is not allowed.");
        return this.amount > asset.amount;
    }
    /**
     * symentic of >=
     * @param asset rhs
     */
    public gte(asset: Asset): boolean {
        ultrain_assert(asset.symbol == this.symbol, "comparison of assets with different symbols is not allowed.");
        return this.amount >= asset.amount;
    }

    public add(asset: Asset): Asset {
        ultrain_assert(this.symbol == asset.symbol, "add asset with different symbol is not allowed.");
        this.amount += asset.amount;
        ultrain_assert(this.amount <= Asset.max_amount, "add asset overflow.");
        ultrain_assert(this.amount >= -Asset.max_amount, "add asset underflow.");
        return this;
    }

    public sub(asset: Asset): Asset {
        ultrain_assert(this.symbol == asset.symbol, "sub asset with different symbol is not allowed.");
        this.amount -= asset.amount;
        ultrain_assert(this.amount <= Asset.max_amount, "sub asset overflow.");
        ultrain_assert(this.amount >= -Asset.max_amount, "sub asset underflow.");
        return this;
    }

    public mul(asset: Asset): Asset {
        ultrain_assert(this.symbol == asset.symbol, "mul asset with different symbol is not allowed.");
        ultrain_assert(asset.amount == 0 || (this.amount * asset.amount) / asset.amount == this.amount, "multiple asset underflow or overflow.");
        this.amount *= asset.amount;
        ultrain_assert(this.amount <= Asset.max_amount, "mul asset overflow.");
        ultrain_assert(this.amount >= -Asset.max_amount, "mul asset underflow.");
        return this;
    }

    public div(asset: Asset): Asset {
        ultrain_assert(this.symbol == asset.symbol, "mul asset with different symbol is not allowed.");
        ultrain_assert(asset.amount == 0, "multiple asset underflow or overflow.");
        this.amount /= asset.amount;
        ultrain_assert(this.amount <= Asset.max_amount, "mul asset overflow.");
        ultrain_assert(this.amount >= -Asset.max_amount, "mul asset underflow.");
        return this;
    }

   public print(): void {
        let p: i64 = <i64>this.symbol.precision();
        let p10: i64 = 1;
        while (p > 0) {
            p10 *= 10;
            --p;
        }

        let change: i64 = this.amount % p10;
        Log.i(this.amount / p10).s(".").i(change).flush();
        this.symbol.print(false);
    }

    public serialize(s: DataStream): void {
        s.serialize64(this.amount);
        this.symbol.serialize(s);
    }

    public deserialize(s: DataStream): void {
        this.amount = s.deserialize64();
        this.symbol.deserialize(s);
    }
}

export class ExtendAsset extends Asset {
    private contract: account_name;
    constructor(asset: Asset, c: account) {
        // super();
        this.symbol = asset.symbol;
        this.amount = asset.amount;
        this.contract = c;
    }

    public getExtendedSymbol(): ExtendSymbol { return new ExtendSymbol(this.symbol, this.contract); }

    public print(): void {
        super.print();
        printString("@");
        printInt(this.contract);
    }
}