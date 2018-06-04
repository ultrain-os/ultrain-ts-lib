import { ISerializable } from "./contract";
import { DataStream } from "./datastream";
import { Log } from "./log";

const CHAR_A: u8 = 0x41;
const CHAR_Z: u8 = 0x5A;

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

export class Asset implements ISerializable {
    private amount: u64;
    private symbol: u64;

    constructor(amt: u64 = 0, sy: u64 = 0) {
        this.amount = amt;
        this.symbol = sy;
    }

    deserialize(ds: DataStream): void {
        this.amount = ds.read<u64>();
        this.symbol = ds.read<u64>();
    }

    serialize(ds: DataStream): void {
        ds.write<u64>(this.amount);
        ds.write<u64>(this.symbol);
    }

    isSymbolValid(): boolean {
        let sym = this.symbol;
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

    getAmount(): u64 { return this.amount; }
    setAmount(newAmount: u64): void { this.amount = newAmount; }
    getSymbol(): u64 { return this.symbol; }
    setSymbol(newSymbol: u64): void { this.symbol = newSymbol; }
    symbolPrecision(): u64 { return this.symbol & 0xff; }
    symbolName(): u64 { return this.symbol >> 8; }
    symbolNameLength(): u32 { return SymbolNameLength(this.symbol); }

    isAmountWithinRange(): boolean {
        return 0 <= this.amount && this.amount <= MAX_AMOUNT;
    }

    isValid(): boolean {
        return this.isAmountWithinRange() && this.isSymbolValid();
    }

    prints(tag: string): void {
        Log.s(tag).s(" [ Asset:  amount = ").i(this.amount, 10).s(" symbol = ").i(this.symbol, 16).s(" ]").flush();
    }
}