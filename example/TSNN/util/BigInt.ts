import { string2cstr } from "../../../src/utils";
import { Log } from "../../../src/log";

declare namespace env {
    function big_int_cmp(p: usize, q: usize,base:u32): i32;
    function big_int_gcd(rop:usize, rop_len: u32, p: usize, q: usize,base:u32): void;
    function big_int_pow_mod(rop:usize, rop_len: u32, Msg: usize, Key: usize, N: usize,base:u32): void;
    function big_int_mul(rop:usize, rop_len: u32, p: usize, q: usize,base:u32):void;
    function big_int_probab_prime(p:usize,reps:u32,base:u32):u32;
}

/**
 * 求p，q公约数
 * @param p
 * @param q
 * @param base 进制，范围2-62
 */
export function gcd(p:string,q:string,base:u32):string{
    let len:i32 = p.length<q.length?p.length+1:q.length+1;
    let rop = new Uint8Array(len);
    env.big_int_gcd(changetype<usize>(rop.buffer), len, string2cstr(p), string2cstr(q),base);
    let res:string = "";
    for(let i: i32 = 0; i <len; i++) {
        let char = load<u8>(changetype<usize>(rop.buffer) + i);
        if(char==0){
            break;
        }
        res = res + String.fromCharCode(char);
    }
    return res;
}

/**
 * 比较p，q大小。-1：p<q;0:p=q;1:p>q;
 * @param p
 * @param q
 * @param base 进制，范围2-62
 */
export function cmp(p:string,q:string,base:u32):i32{
    return env.big_int_cmp(string2cstr(p), string2cstr(q),base);
}
/**
 * 求m^e%n
 * @param m 底
 * @param e 指数
 * @param n 除数
 * @param base 进制，范围2-62
 */
export function powMod(m:string,e:string,n:string,base:u32):string{
    let rop = new Uint8Array(n.length);
    env.big_int_pow_mod(changetype<usize>(rop.buffer), n.length, string2cstr(m), string2cstr(e),string2cstr(n),base);
    let res:string = "";
    for(let i: i32 = 0; i <n.length; i++) {
        let char = load<u8>(changetype<usize>(rop.buffer) + i);
        if(char==0){
            break;
        }
        res = res + String.fromCharCode(char);
    }
    return res;
}

/**
 * 求p，q乘积
 * @param p
 * @param q
 * @param base 进制，范围2-62
 */
export function mul(p:string,q:string,base:u32):string{
    let len:i32 = p.length + q.length+1;
    let rop = new Uint8Array(len);
    env.big_int_mul(changetype<usize>(rop.buffer), len, string2cstr(p), string2cstr(q),base);
    let res:string = "";
    for(let i: i32 = 0; i <len; i++) {
        let char = load<u8>(changetype<usize>(rop.buffer) + i);
        if(char==0){
            break;
        }
        res = res + String.fromCharCode(char);
    }
    return res;
}

/**
 * 判断是否为素数。返回0为合数，1为素数，2可能为素数。p有4^(-reps)概率为合数。
 * @param p
 * @param reps 取15至50比较合理，
 * @param base 进制，范围2-62
 */
export function isProbablyPrime(p:string,reps:u32,base:u32):u32{
    return env.big_int_probab_prime(string2cstr(p), reps,base);
}