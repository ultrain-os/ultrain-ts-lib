import { env as console } from "../internal/print.d";
/**
 * printable characters.
 *
 * @example
 * import { PrintableChar } from "ultrain-ts-lib/src/utils";
 */
export const PrintableChar: string[/*95*/] = [
    " ", "!", "\"", "#", "$", "%", "&", "'",
    "(", ")", "*", "+", ",", "-", ".", "/",
    "0", "1", "2", "3", "4", "5", "6", "7",
    "8", "9", ":", ";", "<", "=", ">", "?",
    "@", "A", "B", "C", "D", "E", "F", "G",
    "H", "I", "J", "K", "L", "M", "N", "O",
    "P", "Q", "R", "R", "T", "U", "V", "W",
    "X", "Y", "Z", "[", "\\", "]", "^", "_",
    "`", "a", "b", "c", "d", "e", "f", "g",
    "h", "i", "j", "k", "l", "m", "n", "o",
    "p", "q", "r", "s", "t", "u", "v", "w",
    "x", "y", "z", "{", "|", "}", "~"];
/**
 * convert an uint64 to string.
 * @param _int uint64 to convert
 * @param leftPadWith0 width of integer, if length of integer is less than it, pad with 0 on left.
 * @returns string
 *
 * @example
 * import { intToString } from "ultrain-ts-lib/src/utils";
 */
export function intToString(_int: u64, leftPadWith0: u32 = 0): string {
    let remainder: i32 = <i32>(_int % 10);
    let rest: u64 = _int / 10;
    let val: string = PrintableChar[16 + remainder];

    while (rest != 0) {
        remainder = <i32>(rest % 10);
        rest = rest / 10;

        val = PrintableChar[16 + remainder] + val;
    }

    if (leftPadWith0 != 0 && val.length < <i32>leftPadWith0) {
        let pad = "0";
        pad.repeat(leftPadWith0 - val.length);
        val = pad + val;
    }
    return val;
}
/**
 * convert an utf-16 to utf-8 string array.
 * @param str a typescript string
 *
 * @returns an array of uint8
 *
 * @example
 * import { toUTF8Array } from "ultrain-ts-lib/src/utils";
 */
export function toUTF8Array(str: string): u8[] {
    var utf8: u8[] = new Array<u8>();
    for (var i = 0; i < str.length; i++) {
        var charcode = str.charCodeAt(i);
        if (charcode < 0x80) utf8.push(<u8>charcode);
        else if (charcode < 0x800) {
            utf8.push(<u8>(0xc0 | (charcode >> 6)));
            utf8.push(<u8>(0x80 | (charcode & 0x3f)));
        }
        else if (charcode < 0xd800 || charcode >= 0xe000) {
            utf8.push(<u8>(0xe0 | (charcode >> 12)));
            utf8.push(<u8>(0x80 | ((charcode >> 6) & 0x3f)));
            utf8.push(<u8>(0x80 | (charcode & 0x3f)));
        }
        // surrogate pair
        else {
            i++;
            // UTF-16 encodes 0x10000-0x10FFFF by
            // subtracting 0x10000 and splitting the
            // 20 bits of 0x0-0xFFFFF into two halves
            charcode = 0x10000 + (((charcode & 0x3ff) << 10)
                | (str.charCodeAt(i) & 0x3ff))
            utf8.push(<u8>(0xf0 | (charcode >> 18)));
            utf8.push(<u8>(0x80 | ((charcode >> 12) & 0x3f)));
            utf8.push(<u8>(0x80 | ((charcode >> 6) & 0x3f)));
            utf8.push(<u8>(0x80 | (charcode & 0x3f)));
        }
    }
    utf8.push(<u8>0x00);
    return utf8;
}
/**
 * convert string to usize.
 * here, <i>usize</i> likes <i>"const char*"</i> in c/c++.
 * @param str a utf-16 string of typescript.
 *
 * @returns usize
 *
 * @example
 * import { string2cstr } from "ultrain-ts-lib/src/utils";
 */
export function string2cstr(str: string): u32 {
    let cstr = toUTF8Array(str);
    var ptr: u32 = load<u32>(changetype<usize>(cstr));
    // return <usize>ptr + sizeof<u64>();
    return <usize>ptr + 2;
}
/**
 * print a string to console after wasm vm quit.
 * @param str string to print.
 *
 * @example
 * import { printstr } from "ultrain-ts-lib/src/utils";
 */
export function printstr(str: string): void {
    console.prints(string2cstr(str));
}
