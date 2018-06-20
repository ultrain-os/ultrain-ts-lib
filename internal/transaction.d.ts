/**
 * @author fanliangqin@ultrain.io
 *
 * declare transaction intrinsic apis.
 */

export namespace env {
    export declare function send_deferred(sender_id: u64, payer: u64, data: usize, len: i32, replace_existing: u32): void;
    export declare function cancel_defferred(sender_id: u64): void;
    export declare function read_transaction(buffer: usize, len: u32): u32;
    export declare function transaction_size(): u32;
    export declare function tapos_block_num(): i32;
    export declare function tapos_block_prefix(): i32;
    export declare function expiration(): u32;
    export declare function get_action(type: u32, index: u32, buffer: usize, size: u32): i32;
    export declare function get_context_free_data(index: u32, buffer: usize, size: u32): i32;
}