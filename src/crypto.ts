import "allocator/arena";
import { env as cry } from "../internal/crypto.d";
import { string2cstr, ultrain_assert } from "./utils";

const HexDigital: string = "0123456789abcdef";
const CHAR0 = 0x30;
const CHAR9 = 0x39;
const CHARa = 0x61;
const CHARf = 0x66;
const CHARA = 0x41;
const CHARF = 0x46;

function to_hex(buffer: usize, buffersize: u32): string {
    let hash = "";
    for (let i: u32 = 0; i < buffersize; i++) {
        let char = load<u8>(<usize>buffer + i);
        let idx: u8 = <u8>(char & 0xff);
        hash = hash + HexDigital.charAt(idx >> 4) + HexDigital.charAt(idx & 0x0f);
    }
    return hash;
}

function charcode_to_digital(char: i32): u8 {
    let ret: u8 = 0;
    if (char >= CHAR0 && char <= CHAR9) {
        ret = <u8>(char - CHAR0);
    } else if (char >= CHARa && char <= CHARf) {
        ret = <u8>(char - CHARa + 10);
    } else if (char >= CHARA && char <= CHARF) {
        ret = <u8>(char - CHARA + 10);
    } else {
        ultrain_assert(false, "unknown character for hexadecimal convert.");
    }
    return ret;
}

function from_hex(hexStr: string, buffer: usize, bufferSize: u32): void {
    let targetSize = hexStr.length / 2;
    ultrain_assert(targetSize == bufferSize, "Crypto.fromString failed: hexadecimal string length is mismatch for target crypto algorithm.");

    for (let i: i32 = 0; i < targetSize; i++) {
        let idx = 2 * i;
        let code = hexStr.charCodeAt(idx);
        let v = charcode_to_digital(code);
        let out: u8 = ((v & 0x0f) << 4);

        code  = hexStr.charCodeAt(idx + 1);
        v = charcode_to_digital(code);
        out = (out | (v & 0x0f));

        store<u8>(<usize>buffer + i, out);
    }
}
/**
 * Class Crypto is applied for hashing a string with desired algorithms.
 * Its derived classes are SHA1, SHA256, SHA512 and Ripemd160.
 * @class Crypto
 */
class Crypto {
    data: Uint8Array;

    constructor(size: i32) {
        this.data = new Uint8Array(size);
    }

    public get buffer(): usize {
        return changetype<usize>(this.data.buffer);
    }

    public get bufferSize(): u32 {
        return this.data.length;
    }
    /**
     * crypto result to hex string.
     */
    public toString(): string {
        return to_hex(this.buffer, this.bufferSize);
    }
    /**
     * hex string to crypto.
     * @param hexStr a hex string.
     */
    public fromString(hexStr: string): void {
        from_hex(hexStr, this.buffer, this.bufferSize);
    }
}
/**
 * Calculate hash of a string with SHA1.
 * @class SHA1
 */
export class SHA1 extends Crypto {
    constructor() {
        super(20);
    }
    /**
     * to calculate hash.
     * @param data a string to calculate hash.
     */
    public hash(data: string): string {
        cry.ts_sha1(string2cstr(data), data.length, this.buffer, this.bufferSize);
        return this.toString();
    }
}
/**
 * Calculate hash of a string with SHA256.
 * @class SHA256
 */
export class SHA256 extends Crypto {
    constructor() {
        super(32);
    }
    /**
     * to calculate hash.
     * @param data a string to calculate hash.
     */
    public hash(data: string): string {
        cry.ts_sha256(string2cstr(data), data.length, this.buffer, this.bufferSize);
        return this.toString();
    }
}
/**
 * Calculate hash of a string with SHA512.
 * @class SHA512
 */
export class SHA512 extends Crypto {
    constructor() {
        super(64);
    }
    /**
     * to calculate hash.
     * @param data a string to calculate hash.
     */
    public hash(data: string): string {
        cry.ts_sha512(string2cstr(data), data.length, this.buffer, this.bufferSize);
        return this.toString();
    }
}
/**
 * Calculate hash of a string with Ripemd160.
 * @class Ripemd160
 */
export class Ripemd160 extends Crypto {
    constructor() {
        super(20);
    }
    /**
     * to calculate hash.
     * @param data a string to calculate hash.
     */
    public hash(data: string): string {
        cry.ts_ripemd160(string2cstr(data), data.length, this.buffer, this.bufferSize);
        return this.toString();
    }
}
/**
 * to assert if source data is consisted with SHA1.
 * @param data source data to assert.
 * @param sha1 encrypte algorithm.
 */
export function assert_sha1(data: string, sha1: SHA1): void {
    let src = sha1.toString();
    cry.ts_assert_sha1(string2cstr(data), data.length, string2cstr(src), src.length);
}
/**
 * to assert if source data is consisted with SHA256.
 * @param data source data to assert.
 * @param sha256 encrypte algorithm.
 */
export function assert_sha256(data: string, sha256: SHA256): void {
    let src = sha256.toString();
    cry.ts_assert_sha256(string2cstr(data), data.length, string2cstr(src), src.length);
}
/**
 * to assert if source data is consisted with SHA512.
 * @param data source data to assert.
 * @param sha512 encrypte algorithm.
 */
export function assert_sha512(data: string, sha512: SHA512): void {
    let src = sha512.toString();
    cry.ts_assert_sha512(string2cstr(data), data.length, string2cstr(src), src.length);
}
/**
 * to assert if source data is consisted with Ripemd160.
 * @param data source data to assert.
 * @param ripe encrypte algorithm.
 */
export function assert_ripemd160(data: string, ripe: Ripemd160): void {
    let src = ripe.toString();
    cry.ts_assert_ripemd160(string2cstr(data), data.length, string2cstr(src), src.length);
}