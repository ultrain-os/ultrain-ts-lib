/**
 * @author fanliangqin@ultrain.io
 */

import { TSString2CharArray, ReleaseCharArrayMem } from "./utils";

declare function eosio_assert(test: i32, msg: usize): void;
declare function eosio_exit(reason: i32): void;
declare function now(): i32;

export function ultrain_assert(test: i32: msg: string): void {
    let chrmsg: usize = TSString2CharArray(msg);
    eosio_assert(test, chrmsg);
    ReleaseCharArrayMem(chrmsg);
}

export function ultrain_exit(reason: i32): void {
    eosio_exit(reason);
}

export function ultrain_now(): i32 {
    return now();
}