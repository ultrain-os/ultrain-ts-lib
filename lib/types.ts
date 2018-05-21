/**
 * @author fanliangqin@ultrain.io
 */

export class public_key {
    public static max_size: i32 = 34;
    public data:u8[/* 34 */];
}

export class signature {
    public static max_size: i32 = 66;
    public data: u8[/* 66 */];
}

export class checksum256 {
    public static max_size: i32 = 32;
    public hash: u8[/* 32 */];
}

export class checksum160 {
    public static max_size: i32 = 20;
    public hash: u8[/* 20 */];
}

export class checksum512 {
    public static max_size: i32 = 64;
    public hash: u8[/* 64 */];
}

export class fixed_string16 {
    public static max_size: i32 = 16;
    public len: u8;
    public str: u8[/* 16 */];
}

export class fixed_string32 {
    public static max_size: i32 = 32;
    public len: u8;
    public str: u8[/* 32 */];
}

export class account_permission {
    public account: i64;
    public permission: u64;
}
