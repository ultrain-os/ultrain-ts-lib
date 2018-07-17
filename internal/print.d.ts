/**
 * @author fanliangqin@ultrain.io
 *
 * prints log apis.
 */

 export declare namespace env {
    function prints(cstr: usize): void;
    function prints_l(cstr: usize, len: u32): void;
    function printi(val: u64): void;
    function printhex(data: usize, datalen: u32): void;
    function printn(name: u64): void;
}