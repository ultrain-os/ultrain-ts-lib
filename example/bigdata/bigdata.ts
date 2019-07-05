import { Contract } from "../../src/contract";
import { Log } from "../../src/log";
import { string2cstr } from "../../src/utils";

declare namespace env {
    function big_int_cmp(p: ArrayBuffer, q: ArrayBuffer): u32;
    function big_int_gcd(rop: ArrayBuffer, rop_len: u32, p: ArrayBuffer, q: ArrayBuffer): void;
    function big_int_pow_mod(rop: ArrayBuffer, rop_len: u32, Msg: ArrayBuffer, Key: ArrayBuffer, N: ArrayBuffer): void;
}

class BigData extends Contract {

    @action
    gcd(p: string, q: string): void {
        let rop = new Uint8Array(10);
        env.big_int_gcd(rop.buffer, 10, string2cstr(p), string2cstr(q));

        for(let i: u32 = 0; i < 10; i++) {
            let char = load<u8>(<usize>rop.buffer + i);
            Log.i(char, 16).s(" : ");
        }

        Log.flush();
    }

    @action
    cmp(p:string, q: string): void {
        let i = env.big_int_cmp(string2cstr(p), string2cstr(q));

        Log.s("cmp result: ").i(i).flush();
    }
}