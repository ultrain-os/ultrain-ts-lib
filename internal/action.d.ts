/**
 * @author fanliangqin@ultrain.io
 *
 * meta functions for action.
 */
export declare namespace env {
     function read_action_data(buffer: ArrayBuffer, len: u32): u32;
     function action_data_size(): u32;
     function require_recipient(account_name: u64): void;
     function require_auth(user: u64): void;
     function has_auth(account_name: u64): i32;
     function require_auth2(account_name: u64, permission: u64): void;
     function is_account(account: account_name): boolean;
     function send_inline(data: ArrayBuffer, len: i32): void;
     function send_context_free_inline(data: ArrayBuffer, len: i32): void;
     function require_write_lock(name: account_name): void;
     function require_read_lock(name: account_name): void;
     function publication_time(): i32;
     function current_sender(): u64;
     function random_uint64(seed: u64): u64;
     function ts_is_account_with_code(account: account_name): i32;
}
