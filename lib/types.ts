/**
 * @author fanliangqin@ultrain.io
 */

export class public_key {
    public data:u8[/* 34 */];
}

export class signature {
    public data: u8[/* 66 */];
}

export class checksum256 {
    public hash: u8[/* 32 */];
}

export class checksum160 {
    public hash: u8[/* 20 */];
}

export class checksum512 {
    public hash: u8[/* 64 */];
}

export class fixed_string16 {
    public len: u8;
    public str: u8[/* 16 */];
}

export class fixed_string32 {
    public len: u8;
    public str: u8[/* 32 */];
}

export class account_permission {
    public account: i64;
    public permission: u64;
}
