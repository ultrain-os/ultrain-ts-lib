/**
 * @author fanliangqin@ultrain.io
 */

export declare namespace env {
     function check_transaction_authorization(trx_buffer: usize, trx_size: u32,
                                                        pubkeys_buffer: usize, pubkeys_size: u32,
                                                        perms_buffer: usize, perms_size: u32): i32;

     function check_permission_authorization(account: account_name, permission: permission_name,
                                                           pubkeys_buffer: usize, pubkeys_size: u32,
                                                           perms_data: usize, perms_size: u32,
                                                           delay_us: u64): i32;
     function get_permission_last_used(account: account_name, permission: permission_name): i64;

     function get_account_creation_time(account: account_name): i64;
}