import "allocator/arena";
import { PrintableChar } from "../src/utils";

function char_to_symbol(c: u8): u64 {
    if (c >= 97 && c <= 122)
        return (c - 97) + 6;
    if (c >= 49 && c <= 53)
        return (c - 49) + 1;
    return 0;
}
/**
 * convert a string to uint64 encoded by Base32.
 * so the string must follow below principles:
 * 1. no more than 13 characters.
 * 2. only contains ".12345abcdefghijklmnopqrstuvwxyz"
 * 3. not end with "."
 *
 * @param str string to convert
 */
export function N(str: string): u64 {
    let len: u32 = str.length;
    let value: u64 = 0;

    for (let i: u32 = 0; i <= 12; ++i) {
        let c: u64 = 0;
        // let chrcode: u8 = <u8>(str.charCodeAt(i & 0xff));
        if (i < len && i <= 12) {
            c = <u64>char_to_symbol(<u8>(str.charCodeAt(i) & 0xff));
        }

        if (i < 12) {
            c &= 0x1f;
            c <<= 64 - 5 * (i + 1);
        } else {
            c &= 0x0f;
        }

        value |= c;
    }

    return value;
}

/**
 * a revert operation of method <i>N</i>
 *
 * @param name uint64 value
 */
export function RN(name: u64): string {
    if (name == 0) {
        return "0";
    }

    const charmap: string = ".12345abcdefghijklmnopqrstuvwxyz";
    const DOT: u8 = <u8>(0x2e);
    let strcodes: u8[/*13*/] = [DOT, DOT, DOT, DOT, DOT, DOT, DOT, DOT, DOT, DOT, DOT, DOT, DOT];

    let tmp: u64 = name;
    for (let i: u32 = 0; i <= 12; ++i) {
        let idx: i32 = <i32>(tmp & (i == 0 ? 0x0f : 0x1f));
        let code: u8 = <u8>charmap.charCodeAt(idx) & 0xff;
        strcodes[12 - i] = code;
        tmp >>= (i == 0 ? 4 : 5);
    }

    let str: string = "";
    let skipDot: boolean = true;
    for (let i: i32 = 12; i >= 0; --i) {
        if (strcodes[i] == DOT && skipDot) {
            // skip right pending dots
        } else {
            skipDot = false;
            let charIdx = strcodes[i] - 0x20;
            str = PrintableChar[charIdx] + str;
        }
    }
    return str;
}

