/**
 * @author fanliangqin@ultrain.io
 *
 * declare functions of privileged which communicate with ultrain chain.
 */
export namespace env {
    export declare function set_resource_limits(account: account_name, ram_bytes: i64, net_weight: i64, cpu_weight: i64): void;
    export declare function set_proposed_producers(producer_data: usize, producer_data_size: u32): i64;
    export declare function is_privileged(account: account_name): boolean;
    export declare function set_privileged(account: account_name, is_priv: boolean): void;
    export declare function set_blockchain_parameters_packed(data: usize, datalen: u32): void;
    export declare function get_blockchain_parameters_packed(data: usize, datalen: u32): u32;
    export declare function activate_feature(f: i64): void;
}