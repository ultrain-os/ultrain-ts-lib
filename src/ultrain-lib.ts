
// ULTRAIN defined functions
export namespace env {
    // action
    declare function read_action_data(buffer: usize, len: u32): u32;
    declare function action_data_size(): u32;
    declare function publication_time(): i32;
    declare function current_receiver(): u64;
    declare function current_sender(): u64;
    declare function send_inline(data: usize, len: i32): void;
    declare function send_context_free_inline(data: usize, len: i32): void;

    //transaction_api
    declare function send_defferred(sender_id: u64, payer: u64, data: usize, len: i32): void;
    declare function cancel_defferred(sender_id: u64): void;
    declare function read_transaction(buffer: usize, len: u32): u32;
    declare function transaction_size(): u32;
    declare function tapos_block_num(): i32;
    declare function tapos_block_prefix(): i32;
    declare function expiration(): u32;
    declare function get_action(type: u32, index: u32, buffer: usize, size: u32): i32;
    declare function get_context_free_data(index: u32, buffer: usize, size: u32): i32;
    declare function check_auth(trs_buff: usize, size: u32, permi_buff: usize, psize: u32): void;

    // auth
    declare function require_auth(user: u64): void;
    declare function require_auth2(account_name: u64, permission: u64): void;
    declare function has_auth(account_name: u64): i32;
    declare function require_recipient(account_name: u64): void;

    // console
    declare function printhex(data: usize, datalen: u32): void;
    declare function printi(val: u64): void;
    declare function prints_l(cstr: usize, len: u32): void;
    declare function prints(cstr: usize): void;
    declare function printn(name: u64): void;
    declare function eosio_assert(condition: u32, cstr: u32): void;
    declare function eosio_exit(code: i32): void;
    declare function now(): u32;

    // db
    declare function db_find_i64(code: u64, scope: u64, table: u64, id: u64): i32;
    declare function db_remove_i64(iterator: i32): void;
    declare function db_store_i64(scope: u64, table: u64, payer: u64, id: u64, data: u32, len: u32): i32;
    declare function db_lowerbound_i64(code: u64, scope: u64, table: u64, id: u64): i32;
    declare function db_next_i64(iterator: i32, primary: i32): i32;
    declare function db_get_i64(iterator: i32, data: u32, len: u32): i32;
    declare function db_update_i64(iterator: i32, payer: u64, data: u32, len: u32): void;
    declare function require_write_lock(account_name: u64): void;
    declare function require_read_lock(account_name: u64): void;

    // privileged
    declare function set_resource_limits(account: u64, ram_bytes: u64, net_weight: u64, cpu_weight: u64): void;
    declare function is_privileged(account: u64): i32;
    declare function set_privileged(account: u64, is_priv: i32): void;
    declare function activate_feature(feature: i64): void;

    declare function set_active_producers(producer_data: usize, producer_data_size: u32): void;
    declare function set_blockchain_parameters_packed(data: usize, datalen: u32): void;
    declare function get_blockchain_parameters_packed(data: usize, datalen: u32): u32;
}
