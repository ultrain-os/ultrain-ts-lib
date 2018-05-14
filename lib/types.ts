/**
 * @author fanliangqin@ultrain.io
 */
import { Name } from "./name";

declare type AccountName = Name;
declare type ActionName = Name;
declare type Name = u64;
declare type account_name = i64;
declare type permission_name = u64;
declare type token_name = u64;
declare type table_name = u64;
declare type time = u32;
declare type scope_name = u64;
declare type action_name = u64;
declare type region_id = u16;

declare type asset_symbol = u64;
declare type share_type = i16;
declare type weight_type = u16;

export class public_key {
    public data:u8[34];
}

export class signature {
    public data: u8[66];
}

export class checksum256 {
    public hash: u8[32];
}

export class checksum160 {
    public hash: u8[20];
}

export class checksum512 {
    public hash: u8[64];
}

export class fixed_string16 {
    public len: u8;
    public str: u8[16];
}

declare type transacton_id_type = checksum256;
declare type field_name = fixed_string16;

export class fixed_string32 {
    public len: u8;
    public str: u8[32];
}

declare type type_name = fixed_string32;

export class account_permission {
    public account: account_name;
    public permission: permission_name;
}
