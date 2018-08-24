
/**
 * @author fanliangqin@ultrain.io
 */
import { StringToSymbol } from "../src/asset";

export let UGS: u64 = StringToSymbol(4, "SYS");

export class PublicKey {
    data: u8[] = new Array<u8>(34);
}

export class Signature {
    data: u8[] = new Array<u8>(66);
}

export class Checksum256 {
    hash: u8[] = new Array<u8>(32);
}

export class Checksum160 {
    hash: u8[] = new Array<u8>(20);
}

export class Checksum512 {
    hash: u8[] = new Array<u8>(64);
}

export class AccountPermission {
    account: account_name;
    permission: permission_name;
}
