import { string2cstr } from "./utils";

declare namespace env {
    function big_int_cmp(p: ArrayBuffer, q: ArrayBuffer, base: u32): i32;
    function big_int_gcd(rop: ArrayBuffer, rop_len: u32, p: ArrayBuffer, q: ArrayBuffer, base: u32): void;
    function big_int_pow_mod(rop: ArrayBuffer, rop_len: u32, Msg: ArrayBuffer, Key: ArrayBuffer, N: ArrayBuffer, base: u32): void;
    function big_int_mul(rop: ArrayBuffer, rop_len: u32, p: ArrayBuffer, q: ArrayBuffer, base: u32): void;
    function big_int_probab_prime(p: ArrayBuffer, reps: u32, base: u32): u32;
}

/**
 * 求p，q公约数
 * @param p
 * @param q
 * @param base 进制，范围2-62
 */
export function bn_gcd(p: string, q: string, base: u32): string {
    let len: i32 = p.length < q.length ? p.length + 1 : q.length + 1;
    let rop = new Uint8Array(len);
    env.big_int_gcd(rop.buffer, len, string2cstr(p), string2cstr(q), base);
    let res = String.UTF8.decode(rop.buffer, true);
    return res;
}

/**
 * 比较p，q大小。
 * @param p
 * @param q
 * @param base 进制，范围2-62
 * @returns ' > 0 ' if p > q ;  '= 0' if p == q; '< 0' if p < q
 */
export function bn_cmp(p: string, q: string, base: u32): i32 {
    return env.big_int_cmp(string2cstr(p), string2cstr(q), base);
}
/**
 * 求(m^e)%n
 * @param m 底
 * @param e 指数
 * @param n 除数
 * @param base 进制，范围2-62
 */
export function bn_pow_mod(m: string, e: string, n: string, base: u32): string {
    let rop = new Uint8Array(n.length);
    env.big_int_pow_mod(rop.buffer, n.length, string2cstr(m), string2cstr(e), string2cstr(n), base);
    let res = String.UTF8.decode(rop.buffer, true);
    return res;
}

/**
 * 求p，q乘积
 * @param p
 * @param q
 * @param base 进制，范围2-62
 */
export function bn_mul(p: string, q: string, base: u32): string {
    let len: i32 = p.length + q.length + 1;
    let rop = new Uint8Array(len);
    env.big_int_mul(rop.buffer, len, string2cstr(p), string2cstr(q), base);
    let res = String.UTF8.decode(rop.buffer, true);
    return res;
}

/**
 * 判断是否为素数。返回0为合数，1为素数，2可能为素数。p有4^(-reps)概率为合数。
 * @param p
 * @param reps 取15至50比较合理，
 * @param base 进制，范围2-62
 * @returns 2: 肯定是素数；　1：可能是素数；　0：肯定不是素数
 */
export function bn_is_probab_prime(p: string, reps: u32, base: u32): u32 {
    return env.big_int_probab_prime(string2cstr(p), reps, base);
}
