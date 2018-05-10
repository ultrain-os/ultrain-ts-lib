/**
 * @author fanliangqin@ultrain.io
 */
import "./types";

const CHA: u8 = 0x61; /* ASCII code of 'a' */
const CHZ: u8 = 0x7A; /* ASCII code of 'z' */
const CH1: u8 = 0x31; /* ASCII code of '1' */
const CH5: u8 = 0x35; /* ASCII code of '5' */

function char_to_symbol(c: u8): u8 {
    if (c >= CHA && c <= CHZ)
        return (c - CHA) + 6;
    if (c >= CH1 && c <= CH5)
        return (c - CH1) + 1;
    return 0;
}

/**
 * convert a string to name, using base32 encoding.
 * @param str a string to encode
 * @returns u64 base32 encoded uint64.
 */
export function String2Name(str: string): Name {
    let len: u32 = str.length;
    let value: u64 = 0;

    for (let i: u32 = 0; i <= 12; ++i) {
        let c: u64 = 0;
        // let chrcode: u8 = <u8>(str.charCodeAt(i & 0xff));
        if (i < len && i <= 12) {
            c = <u64>char_to_symbol(<u8>(str.charCodeAt(i & 0xff)));
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