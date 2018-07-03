/**
 * @author fanliangqin@ultrain.io
 *
 * meta functions for action.
 */
import "./alias.d";

export namespace env {
    export declare function read_action_data(buffer: usize, len: u32): u32;
    export declare function action_data_size(): u32;
    export declare function require_recipient(account_name: u64): void;
    export declare function require_auth(user: u64): void;
    export declare function has_auth(account_name: u64): i32;
    export declare function require_auth2(account_name: u64, permission: u64): void;
    export declare function is_account(account: account_name): boolean;
    export declare function send_inline(data: usize, len: i32): void;
    export declare function send_context_free_inline(data: usize, len: i32): void;
    export declare function require_write_lock(name: account_name): void;
    export declare function require_read_lock(name: account_name): void;
    export declare function publication_time(): i32;
    export declare function current_receiver(): u64;
    export declare function current_sender(): u64;
    export declare function random_uint64(seed: u64): u64;
}
