import { env as console } from "./ultrain-lib"

export const ASCIICHAR: string[/*95*/] = [
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

export function toUTF8Array(str: string): u8[] {
    var utf8: u8[] = [];
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

export function string2cstr(str: string): u32 {
    let cstr = toUTF8Array(str);
    var ptr: u32 = load<u32>(<usize>cstr);
    return <usize>ptr + sizeof<u64>();
}

export function printstr(str: string): void {
    console.prints(string2cstr(str));
}

export function ultrain_assert(condition: bool, msg: string): void {
    if (condition == false) {
        console.ultrainio_assert(0, string2cstr(msg));
    }
}

function char_to_symbol(c: u8): u64 {
    if (c >= 97 && c <= 122)
        return (c - 97) + 6;
    if (c >= 49 && c <= 53)
        return (c - 49) + 1;
    return 0;
}

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

export function RN(name: u64): string {
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
    for (let i: i32 = 12; i >= 0; --i) {
        if (strcodes[i] != DOT) {
            let charIdx = strcodes[i] - 0x20;
            str = ASCIICHAR[charIdx] + str;
        }
    }
    return str;
}
