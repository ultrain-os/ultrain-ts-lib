import { SHA256 } from "../src/crypto";

declare namespace env{
    function head_block_id(sha256: ArrayBuffer, size: u32): void;
    function head_block_previous_id(sha256: ArrayBuffer, size: u32): void;
    function head_block_number(): u32;
    function head_block_timestamp(): u32;
    function head_block_proposer(): u64;
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