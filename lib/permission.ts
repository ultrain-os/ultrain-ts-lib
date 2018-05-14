/**
 * @author fanliangqin@ultrain.io
 */
import "allocator/arena";
import "./types";

declare function check_authorization(account: u64, permission: u64, pubkeys: i32, pubkeys_len: u32): i32;
/**
 * to check permission invalid or not.
 * @param account
 * @param permission
 * @param pubkeys
 * @param pubkeys_len
 */
export function checkAuthorization(  account: account_name,  permission: permission_name, pubkeys: u8[], pubkeys_len: u32 ): boolean {
    if (pubkeys_len == 0) return false;

    let keysmem: usize = allocate_memory(sizeof<u8>() * pubkeys_len);
    let ptr: usize = keysmem;
    for (let i: u32 = 0; i < pubkeys_len; ++i) {
        store<u8>(ptr, pubkeys[i])
        ++ptr;
    }
    let result: boolean = check_authorization(account, permission, keysmem, pubkeys_len) != 0;
    free_memory(keysmem);
    return result;
}