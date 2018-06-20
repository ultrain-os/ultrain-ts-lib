/**
 * @author fanliangqin@ultrain.io
 */

export namespace env {
    export declare function ultrainio_assert(condition: u32, cstr: u32): void;
    export declare function ultrainio_assert_message(test: u32, msg: usize, len: u32): void;
    export declare function ultrainio_assert_code(test: u32, code: u64): void;
    export declare function ultrainio_exit(code: i32): void;
    export declare function current_time(): u64;
    /**
     * returns the time in seconds from 1970.
     */
    export function now(): u32 { return <u32>(current_time() / 1000000); }

}