import { ISerializable } from "../lib/ISerializable";
import { DataStream } from "./datastream";
import { Log } from "./log";
import { ultrain_assert } from "./utils";
import { account_name } from "../internal/alias";
import { queryBalance, send } from "./balance";

const CHAR_A: u8 = 0x41;
const CHAR_Z: u8 = 0x5A;
/**
 * Encode a string to uint64 value,
 * for example,
 *    let symbol = StringToSymbol(4, "ABC"); // symbol = 0x43424104
 * the precision number 4 means there are 4 digitals after ".",
 * Asset "100.0000 ABC" will match this symbol.
 *
 * @param precision symbol precision
 * @param str symbol as string
 * @returns uint64 value.
 */
export function StringToSymbol(precision: u8, str: string): u64 {
    // CAUTION(fanliangqin): str.length must be less than 7
    let len: u8 = <u8>str.length;
    ultrain_assert(len <= 7, "length of _symbol name must be less than 7.");
    let result: u64 = 0;
    for (let i: u8 = 0; i < len; ++i) {
        let charCode: u8 = <u8>(str.charCodeAt(i) & 0xff);
        if (charCode < CHAR_A || charCode > CHAR_Z) {
            Log.s("string_to__symbol failed for not supoort code : ").i(charCode, 16).flush();
        } else {
            result |= ((<u64>charCode) << ((8 * (i + 1))));
        }
    }

    result |= <u64>precision;
    return result;
}

function SymbolNameLength(tmp: u64): u32 {
    tmp >>= 8; // skip precision
    let length: u32 = 0;
    while ((tmp & 0xff) != 0 && length <= 7) {
        ++length;
        tmp >>= 8;
    }

    return length;
}

const MAX_AMOUNT: u64 = ((1 << 62) - 1);
/**
 * The class Asset manages the digital assets which stored on the chain.
 * A valid asset has two parts: amount and symbol. Different assets have
 * different symbols. for example, "1000 UGS" and "1000 SYS" are both valid
 * assets, but they are different.
 * You can do +,-,*, / and logic compare such as ==,!=, <=, >= on assets with same symbol.
 */
export class Asset implements ISerializable {
    private _amount: u64;
    private _symbol: u64;

    constructor(amt: u64 = 0, sy: u64 = 0) {
        this._amount = amt;
        this._symbol = sy;
    }

    deserialize(ds: DataStream): void {
        this._amount = ds.read<u64>();
        this._symbol = ds.read<u64>();
    }

    serialize(ds: DataStream): void {
        ds.write<u64>(this._amount);
        ds.write<u64>(this._symbol);
    }
    /**
     * To check if a symbol is valid or not.
     * A valid symbol must fullfill two conditions:
     * 1. length of symbol string must be less or equal than 7.
     *    for example, "ABCDEFG" is valid, but "ABCEDFGH" is invalid.
     * 2. the symbol can only contains upper case characters in "A-Z".
     */
    isSymbolValid(): boolean {
        let sym = this._symbol;
        sym >>= 8; // remove precious bits
        for (let i: i32 = 0; i < 7; ++i) {
            let c: u8 = <u8>(sym & 0xff);
            if (c < CHAR_A || c > CHAR_Z) return false;
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

    private static checkOperaotrCondition(rhs: Asset, lhs: Asset, op: string): void {
        ultrain_assert(rhs._symbol == lhs._symbol, op + " : can not compare Asset with different _symbol.");
    }

    public get amount(): u64 {
        return this._amount;
    }

    public set amount(a: u64) {
        this._amount = a;
    }

    @operator(">")
    private static _gt(rhs: Asset, lhs: Asset): boolean {
        Asset.checkOperaotrCondition(rhs, lhs, ">");
        return rhs._amount > lhs._amount;
    }

    @operator(">=")
    private static _gte(rhs: Asset, lhs: Asset): boolean {
        Asset.checkOperaotrCondition(rhs, lhs, ">=");
        return rhs._amount >= lhs._amount;
    }

    @operator("<")
    private static _lt(rhs: Asset, lhs: Asset): boolean {
        Asset.checkOperaotrCondition(rhs, lhs, "<");
        return rhs._amount < lhs._amount;
    }

    @operator("<=")
    private static _lte(rhs: Asset, lhs: Asset): boolean {
        Asset.checkOperaotrCondition(rhs, lhs, "<=");
        return rhs._amount <= lhs._amount;
    }

    @operator("==")
    private static _eq(rhs: Asset, lhs: Asset): boolean {
        Asset.checkOperaotrCondition(rhs, lhs, "==");
        return rhs._amount == lhs._amount;
    }

    @operator("+")
    private _add(rhs: Asset, lhs: Asset): Asset {
        Asset.checkOperaotrCondition(rhs, lhs, "+");
        let result = new Asset();
        result.setSymbol(rhs.getSymbol())
        result.setAmount(rhs.getAmount() + lhs.getAmount());
        return result;
    }

    @operator("-")
    private _sub(rhs: Asset, lhs: Asset): Asset {
        Asset.checkOperaotrCondition(rhs, lhs, "-");
        let result = new Asset();
        result.setSymbol(rhs.getSymbol())
        result.setAmount(rhs.getAmount() - lhs.getAmount());
        return result;
    }
    /**
     * Clone an Asset object.
     */
    clone(): Asset {
        let ast = new Asset();
        ast._amount = this._amount;
        ast._symbol = this._symbol;

        return ast;
    }
    /**
     * add two Asset objects together, like "+"
     * @param rhs another Asset object with same symbol.
     */
    add(rhs: Asset): Asset {
        ultrain_assert(rhs._symbol == this._symbol, "add: can not compare Asset with different _symbol.");
        this._amount += rhs._amount;
        return this;
    }
    /**
     * sub Asset's amount, like "-"
     * @param rhs another Asset object with same symbol to sub.
     */
    sub(rhs: Asset): Asset {
        ultrain_assert(rhs._symbol == this._symbol, "sub: can not compare Asset with different _symbol.");
        ultrain_assert(this._amount >= rhs._amount, "sub: the amount is less than target asset.");
        this._amount -= rhs._amount;
        return this;
    }
    /**
     * multiple the asset with a factor.
     * @param rhs multiple factor.
     */
    multi(rhs: u64): Asset {
        this._amount *= rhs;
        return this;
    }
    /**
     * divide the asset with a factor.
     * @param rhs divide factor.
     */
    divide(rhs: u64): Asset {
        ultrain_assert(rhs != 0, "divide by 0");
        this._amount /= rhs;
        return this;
    }
    /**
     * Get the amount of Asset.
     * @returns an uint64 value.
     */
    getAmount(): u64 { return this._amount; }
    /**
     * Set the amount of Asset.
     * @param newAmount new amount value.
     */
    setAmount(newAmount: u64): void { this._amount = newAmount; }
    /**
     * Get the encoded symbol.
     * for example, if the symbol string is "ABC",
     * then the symbol is 0x434241xx. Notice the last "xx" stands for the precisions.
     */
    getSymbol(): u64 { return this._symbol; }
    /**
     * Set new encoded symbol.
     * Generate new symbol by calling function {@link StringToSymbol}
     * @param newSymbol new symbol
     */
    setSymbol(newSymbol: u64): void { this._symbol = newSymbol; }
    /**
     * Get the precision of Asset.
     */
    symbolPrecision(): u64 { return this._symbol & 0xff; }
    /**
     * Get symbol name without precision info.
     */
    symbolName(): u64 { return this._symbol >> 8; }
    /**
     * Get the length of symbol name.
     * @returns uint32
     */
    symbolNameLength(): u32 { return SymbolNameLength(this._symbol); }

    isAmountWithinRange(): boolean {
        return 0 <= this._amount && this._amount <= MAX_AMOUNT;
    }
    /**
     * To check if an Asset is valid or not.
     */
    isValid(): boolean {
        return this.isAmountWithinRange() && this.isSymbolValid();
    }

    prints(tag: string): void {
        Log.s(tag).s(" [ Asset:  _amount = ").i(this._amount, 10).s(" _symbol = ").i(this._symbol, 16).s(" ]").flush();
    }
    /**
     * query the balance of specific account.
     * @param account account name for querying balance from.
     */
    public static balanceOf(account: account_name): Asset {
        let ret = queryBalance(account);
        return ret;
    }
    /**
     * Transfer some Assets from an account to another.
     * It is an async method, if the operation failed, then
     * an exception will be thrown and the transaction failed.
     *
     * @param from transfer Asset from this account.
     * @param to transfer Asset to this account.
     * @param value assets will be transfered.
     * @param memo a memo tip for this transaction.
     */
    public static transfer(from: account_name, to: account_name, value: Asset, memo: string): void {
        send(from, to, value, memo);
    }
}