/**
 * @author fanliangqin@ultrain.io
 *
 * prints log apis.
 */

export namespace env {
    export declare function prints(cstr: usize): void;
    export declare function prints_l(cstr: usize, len: u32): void;
    export declare function printi(val: u64): void;
    export declare function printhex(data: usize, datalen: u32): void;
    export declare function printn(name: u64): void;
}