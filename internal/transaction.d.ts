/**
 * @author fanliangqin@ultrain.io
 *
 * declare transaction intrinsic apis.
 */

export declare namespace env {
     function ts_send_deferred(sender_id: u64, payer: u64, data: ArrayBuffer, len: i32, replace_existing: u32): void;
     function cancel_defferred(sender_id: u64): void;
     function read_transaction(buffer: ArrayBuffer, len: u32): u32;
     function transaction_size(): u32;
     function tapos_block_num(): i32;
     function tapos_block_prefix(): i32;
     function expiration(): u32;
     function get_action(type: u32, index: u32, buffer: ArrayBuffer, size: u32): i32;
     function get_context_free_data(index: u32, buffer: ArrayBuffer, size: u32): i32;
     function get_transaction_id(buffer: ArrayBuffer, len: u32): i32;
     function get_transaction_published_time(): u32;
}