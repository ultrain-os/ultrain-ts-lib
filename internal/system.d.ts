/**
 * @author fanliangqin@ultrain.io
 */

export declare namespace env {
     function ultrainio_assert_message(test: u32, msg: ArrayBuffer, len: u32): void;
     function ultrainio_assert_code(test: u32, code: u64): void;
     function ultrainio_exit(code: i32): void;
     function current_time(): u64;
     function emit_event(name: ArrayBuffer, name_size: u32, param: ArrayBuffer, param_size: u32): i32;
    /**
     * returns the time in seconds from 1970.
     */

     // TODO
     // function now(): u32 { return <u32>(current_time() / 1000000); }

}

