/**
 * @author fanliangqin@ultrain.io
 * @datetime 10:10:38, 07/18/2018
 * All rights reserved by ultrain.io @2018
 */
import "allocator/arena";
import { ASCIICHAR } from "./utils";
import { ISerializable } from "../lib/ISerializable";
import { DataStream } from "./datastream";

/* format index: ._0-9a-zA-Z */
function char_to_symbol_ex(c: u8): u64 {
    if (c == 0x2E) // .
        return 0;
    if (c == 0x5F) // _
        return 1;

    if (c >= 0x30 && c <= 0x39) // 0 ~ 9
        return (c - 0x30) + 2;

    if (c >= 0x61 && c <= 0x7a) // a ~ z
        return (c - 0x61) + 12;

    if (c >= 0x41 && c <= 0x5A) // A ~ Z
        return (c - 0x41) + 38;

    return 0xFF; // ERROR
}

export function NEX(str: string): NameEx {
    let result = new NameEx(0, 0);
    let name: u64 = 0;
    let len: i32 = str.length;

    for (let i: i32 = 0; i < len; i++) {
        let sym = char_to_symbol_ex(<u8>str.charCodeAt(i));
        if ( i <= 9) {
            name |= (sym << (6 * i));
        } else if (i == 10) {
            let rb4: u64 = (sym & 0xF);
            name |= (rb4 << (6 * i));
            result.valueL = name;

            let lb2: u64 = ((sym & 0x30) >> 4);
            name = lb2;
        } else {
            name |= (sym << (6 * (i - 11) + 2));
        }

        if (len <= 10) {
            result.valueL = name;
        } else {
            result.valueH = name;
        }
    }
    return result;
}

export function RNEX(h: u64, l: u64): string {
    const charmap: string = "._0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    const DOT: u8 = <u8>(0x2e);
    let str: u8[/*13*/] = [];
    for (let i: i32 = 0; i < 21; i++) {
        str.push(DOT);
    }

    let sym: i32 = 0;
    for (let i: i32 = 0; i <= 20; ++i) {
        if (i <= 9) {
            sym = <i32>(l & 0x3F);
            str[i] = <u8>charmap.charCodeAt(sym);
            l = l >> 6;
        } else if (i == 10) {
            let rb2: u64 = h & 0x3;
            rb2 = rb2 << 4;
            sym = <i32>(rb2 | l);
            str[i] = <u8>charmap.charCodeAt(sym);
            h = h >> 2;
        } else {
            sym = <i32>(h & 0x3F);
            str[i] = <u8>charmap.charCodeAt(sym);
            h = h >> 6;
        }
    }

    let result: string = "";
    let skipDot: boolean = true;

    for (let i: i32 = 20; i >= 0; --i) {
        if (str[i] == DOT && skipDot) {
            // skip right pending dots
        } else {
            skipDot = false;
            let charIdx = str[i] - 0x20;
            result = ASCIICHAR[charIdx] + result;
        }
    }
    return result;
}

export class NameEx implements ISerializable {
    valueH: u64;
    valueL: u64;

    constructor(h: u64, l: u64) {
        this.valueH = h;
        this.valueL = l;
    }

    @operator("==")
    private static _eq(rhs: NameEx, lhs: NameEx): boolean {
        return rhs.valueH == lhs.valueH && rhs.valueL == lhs.valueL;
    }

    @operator("!=")
    private static _neq(rhs: NameEx, lhs: NameEx): boolean {
        return rhs.valueH != lhs.valueH || rhs.valueL != lhs.valueL;
    }

    serialize(ds: DataStream): void {
        ds.write<u64>(this.valueH);
        ds.write<u64>(this.valueL);
    }

    deserialize(ds: DataStream): void {
        this.valueH = ds.read<u64>();
        this.valueL = ds.read<u64>();
    }

    primaryKey(): u64 {
        return <u64>0;
    }
}
