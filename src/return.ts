/**
 * @author fanliangqin@ultrain.io
 * @datetime 16:36:37, 07/05/2018
 * All rights reserved by ultrain.io @2018
 */
import { string2cstr } from "./utils";

namespace env {
    export declare function set_result_str(cstr: usize): void;
    export declare function set_result_int(val: u64): void;
}
/**
 * set value as return value. This value will be printed to console or return within response
 * if you call API by POST method via https. Till now, type T can only be string or integer.
 * NOTE: the return value doesn't mean the transaction is commited by blockchain, but means if the
 * transaction is executed, the result will be it.
 * @param val value will set as return value.
 *
 * @example
 * import { Return } from "ultrain-ts-lib/src/return";
 */
export function Return<T> (val: T): void {
    if (isString(val)) {
        env.set_result_str(string2cstr(val));
    } else if (isInteger(val)) {
        env.set_result_int(<u64>val);
    } else {
        ultrain_assert(false, "Return only support string and int.");
    }
}

/**
 * return an array to caller. It behaves like Return.
 * @param val an array of returns value.
 *
 * @example
 * import { ReturnArray } from "ultrain-ts-lib/src/return";
 */
export function ReturnArray<T>(val: T[]): void {
    for (let i: i32 = 0; i < val.length; i++) {
        Return<T>(val[i]);
    }
}