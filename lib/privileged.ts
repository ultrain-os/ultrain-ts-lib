/**
 * @author fanliangqin@ultrain.io
 */

declare function set_resource_limits( account: u64, ram_bytes: u64, net_weight: u64, cpu_weight: u64 );
declare function is_privileged( account: u64 ): i32;
declare function set_privileged( account: u64, is_priv: i32 ): void;
declare function activate_feature(feature: i64 ): void;

declare function set_active_producers( producer_data: i32, producer_data_size: u32 );
declare function set_blockchain_parameters_packed(data: i32, datalen: u32): void;
declare function get_blockchain_parameters_packed(data: i32, datalen: u32): u32;

export function setResourceLimits(account: u64, ramBytes: u64, netWeight: u64, cpuWeight: u64): void {
    set_resource_limits(account, ramBytes, netWeight, cpuWeight);
}

export function isPrivileged(account: U64): boolean {
    let priv: i32 = is_privileged(account);
    return priv != 0;
}

export function setPrivileged(account: u64, isPriv: boolean): void {
    set_privileged(account, isPriv ? 1 : 0);
}

export function activeFeature(feature: i64): void {
    activate_feature(feature);
}

export function setActiveProducer(): void {

}