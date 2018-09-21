import "allocator/arena";
import { env as cry } from "../internal/crypto.d";
import { string2cstr } from "./utils";

const HexDigital: string = "0123456789abcdef";

function to_hex(buffer: usize, buffersize: u32): string {
    let hash = "";
    for (let i: u32 = 0; i < buffersize; i++) {
        let char = load<u8>(<usize>buffer + i);
        let idx: u8 = <u8>(char & 0xff);
        hash = hash + HexDigital.charAt(idx >> 4) + HexDigital.charAt(idx & 0x0f);
    }
    return hash;
}

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

    public toString(): string {
        return to_hex(this.buffer, this.bufferSize);
    }
}

export class SHA1 extends Crypto {
    constructor() {
        super(20);
    }

    public hash(data: string): string {
        cry.ts_sha1(string2cstr(data), data.length, this.buffer, this.bufferSize);
        return this.toString();
    }
}

export class SHA256 extends Crypto {
    constructor() {
        super(32);
    }

    public hash(data: string): string {
        cry.ts_sha256(string2cstr(data), data.length, this.buffer, this.bufferSize);
        return this.toString();
    }
}

export class SHA512 extends Crypto {
    constructor() {
        super(64);
    }

    public hash(data: string): string {
        cry.ts_sha512(string2cstr(data), data.length, this.buffer, this.bufferSize);
        return this.toString();
    }
}

export class Ripemd160 extends Crypto {
    constructor() {
        super(20);
    }

    public hash(data: string): string {
        cry.ts_ripemd160(string2cstr(data), data.length, this.buffer, this.bufferSize);
        return this.toString();
    }
}

export function assert_sha1(hash: string, sha1: SHA1): void {
    let src = sha1.toString();
    cry.ts_assert_sha1(string2cstr(hash), hash.length, string2cstr(src), src.length);
}

export function assert_sha256(hash: string, sha256: SHA256): void {
    let src = sha256.toString();
    cry.ts_assert_sha256(string2cstr(hash), hash.length, string2cstr(src), src.length);
}

export function assert_sha512(hash: string, sha512: SHA512): void {
    let src = sha512.toString();
    cry.ts_assert_sha512(string2cstr(hash), hash.length, string2cstr(src), src.length);
}

export function assert_ripemd160(hash: string, ripe: Ripemd160): void {
    let src = ripe.toString();
    cry.ts_assert_ripemd160(string2cstr(hash), hash.length, string2cstr(src), src.length);
}