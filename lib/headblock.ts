import "allocator/arena";
import { PrintableChar } from "../src/utils";
import { Log } from "../src/log";

declare namespace env{
    function head_block_id(sha256: usize, size: u32): void;
    function head_block_previous_id(sha256: usize, size: u32): void;
    function head_block_number(): u32;
    function head_block_timestamp(): u32;
    function head_block_proposer(): u64;
}

const HexDigital: string = "0123456789abcdef";

class SHA256 {
    data: Uint8Array;
    constructor() {
        this.data = new Uint8Array(32);
    }

    public get buffer(): usize {
        return changetype<usize>(this.data.buffer);
    }

    public get bufferSize(): u32 {
        return this.data.length;
    }

    public toString(): string {
        let hash = "";
        for (let i: i32 = 0; i < this.data.length; i++) {
            let char = load<u8>(<usize>this.data.buffer + i);
            let idx: u8 = <u8>(char & 0xff);
            hash = hash + HexDigital.charAt(idx >> 4) + HexDigital.charAt(idx & 0x0f);
        }
        return hash;
    }
}

export class HeadBlock {

    public static get id(): string {
        let hash = new SHA256();
        env.head_block_id(hash.buffer, hash.bufferSize);
        return hash.toString();
    }

    public static get previousId(): string {
        let hash = new SHA256();
        env.head_block_previous_id(hash.buffer, hash.bufferSize);
        return hash.toString();
    }

    public static get number(): u32 {
        return env.head_block_number();
    }

    public static get timestamp(): u64 {
        return env.head_block_timestamp();
    }

    public static get producer(): u64 {
        return env.head_block_proposer();
    }
}