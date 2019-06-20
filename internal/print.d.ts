/**
 * @author fanliangqin@ultrain.io
 *
 * prints log apis.
 */

 export declare namespace env {
     function prints(cstr: ArrayBuffer): void;
     function prints_l(cstr: ArrayBuffer, len: u32): void;
     function printi(val: u64): void;
     function printhex(data: ArrayBuffer, datalen: u32): void;
     function printn(name: u64): void;
}