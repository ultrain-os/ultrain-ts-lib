/**
 * @author fanliangqin@ultrain.io
 *
 * declare functions of privileged which communicate with ultrain chain.
 */
export declare namespace env {
     function set_resource_limits(account: account_name, ram_bytes: i64, net_weight: i64, cpu_weight: i64): void;
     function set_proposed_producers(producer_data: ArrayBuffer, producer_data_size: u32): i64;
     function is_privileged(account: account_name): boolean;
     function set_privileged(account: account_name, is_priv: boolean): void;
     function set_blockchain_parameters_packed(data: ArrayBuffer, datalen: u32): void;
     function get_blockchain_parameters_packed(data: ArrayBuffer, datalen: u32): u32;
     function activate_feature(f: i64): void;
}