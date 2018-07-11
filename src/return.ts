/**
 * @author fanliangqin@ultrain.io
 * @datetime 16:36:37, 07/05/2018
 * All rights reserved by ultrain.io @2018
 */
import { string2cstr, ultrain_assert } from "./utils";

namespace env {
    export declare function set_result_str(cstr: usize): void;
    export declare function set_result_int(val: u64): void;
}

export function Return<T> (val: T): void {
    if (isString(val)) {
        env.set_result_str(string2cstr(val));
    } else if (isInteger(val)) {
        env.set_result_int(<u64>val);
    } else {
        ultrain_assert(0, "Return only support string and int.");
    }
}