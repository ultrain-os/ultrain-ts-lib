import { env as cry } from "../internal/crypto.d";
import { string2cstr, intToString } from "./utils";

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
 *
 * @example
 * import { SHA1 } from "ultrain-ts-lib/src/crypto";
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
 *
 * @example
 * import { SHA256 } from "ultrain-ts-lib/src/crypto";
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
 *
 * @example
 * import { SHA512 } from "ultrain-ts-lib/src/crypto";
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
 *
 * @example
 * import { Ripemd160 } from "ultrain-ts-lib/src/crypto";
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
 *
 * @example
 * import { assert_sha1 } from "ultrain-ts-lib/src/crypto";
 */
export function assert_sha1(data: string, sha1: SHA1): void {
    let src = sha1.toString();
    cry.ts_assert_sha1(string2cstr(data), data.length, string2cstr(src), src.length);
}
/**
 * to assert if source data is consisted with SHA256.
 * @param data source data to assert.
 * @param sha256 encrypte algorithm.
 *
 * @example
 * import { assert_sha256 } from "ultrain-ts-lib/src/crypto";
 */
export function assert_sha256(data: string, sha256: SHA256): void {
    let src = sha256.toString();
    cry.ts_assert_sha256(string2cstr(data), data.length, string2cstr(src), src.length);
}
/**
 * to assert if source data is consisted with SHA512.
 * @param data source data to assert.
 * @param sha512 encrypte algorithm.
 *
 * @example
 * import { assert_sha512 } from "ultrain-ts-lib/src/crypto";
 */
export function assert_sha512(data: string, sha512: SHA512): void {
    let src = sha512.toString();
    cry.ts_assert_sha512(string2cstr(data), data.length, string2cstr(src), src.length);
}
/**
 * to assert if source data is consisted with Ripemd160.
 * @param data source data to assert.
 * @param ripe encrypte algorithm.
 *
 * @example
 * import { assert_ripemd160 } from "ultrain-ts-lib/src/crypto";
 */
export function assert_ripemd160(data: string, ripe: Ripemd160): void {
    let src = ripe.toString();
    cry.ts_assert_ripemd160(string2cstr(data), data.length, string2cstr(src), src.length);
}

/**
 * to verity pk and proof.
 * @param pk_str string of pk
 * @param pk_proof string of proof
 * @param message a message
 */
export function verify_with_pk(pk_str: string, pk_proof: string, message: string): boolean {
    let status = cry.ts_verify_with_pk(string2cstr(pk_str), string2cstr(pk_proof), string2cstr(message));

    return status == 1 ? true : false;
}

/**
 * Get a random number from system service.
 * This number will be kept the same during a consensus period,
 * so, if you invoke this function multi times in an action,
 * the random number wouldn't change.
 *
 * @export
 * @param {account_name} code system service account.
 * @param {u64} table table name of the random number.
 * @param {u64} scope scope of the random number.
 * @param {u64} primary primary of the random number.
 */
export function get_random_number(code: account_name, table: u64, scope: u64, primary: u64): u64 {
    let value = new Uint8Array(512);
    let readLength = cry.ts_read_db_record(code, table, scope, primary, changetype<usize>(value.buffer), value.length);
    if (readLength < 0) return 0;
    let ds = new DataStream(value.buffer, readLength);
    let rnum = ds.read<u64>();
    return rnum;
}

export class MerkleProof {
    proofs: string[] = [];
    txBytes: u8[]= [];

    private  verify_merkle_proof(transaction_mroot: string, merkle_proof: string[], tx_bytes: u8[]): i32 {
        var ds = new DataStream(new ArrayBuffer(0), 0);
        ds.writeStringVector(merkle_proof);
        var mplen = ds.size();
        var mpds = DSHelper.getDataStreamWithLength(mplen);
        mpds.writeStringVector(merkle_proof);

        var txds = DataStream.fromArray<u8>(tx_bytes);

        return cry.ts_verify_merkle_proof(string2cstr(transaction_mroot), mpds.pointer(), mpds.size(), txds.pointer(), txds.size());
    }

    verify(transaction_mroot: string): boolean {
        return this.verify_merkle_proof(transaction_mroot, this.proofs, this.txBytes) != 0;
    }

    static getMerkleProof(block_number: u32, trx_id: string): MerkleProof {
        var ds = DSHelper.getDataStreamWithLength(2048); // try with 2048
        var ret = cry.ts_merkle_proof(block_number, string2cstr(trx_id), ds.pointer(), ds.size());
        if (ret != 0) {
            ds = DSHelper.getDataStreamWithLength(ret);
            ret = cry.ts_merkle_proof(block_number, string2cstr(trx_id), ds.pointer(), ds.size());
            ultrain_assert(ret == 0, "Read MerkleProof failed: block_number =  " + intToString(block_number) +", trx_id = " + trx_id);
        }

        var mklp = new MerkleProof();
        mklp.proofs = ds.readStringVector();
        mklp.txBytes = ds.readVector<u8>();

        return mklp;
    }
}
