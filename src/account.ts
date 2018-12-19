import "allocator/arena";
import { env as AccountAPI } from "../internal/action.d";
import { env as CryptoAPI} from "../internal/crypto.d";

import { Asset } from "./asset";
import { queryBalance, send } from "../lib/balance";
import { N, RN } from "../lib/name";
import { string2cstr } from "./utils";
/**
 * Convert a string to class Account.
 * @param str the account string to be converted.
 * @example
 *  let ceo = ACCOUNT("jack.ma");
 *  let employ = ACCOUNT("miny");
 *  ceo.transfer(employ.code, "1000.000 UGS", "your annual award.");
 *
 * @example
 * import { ACCOUNT } from "ultrain-ts-lib/src/account";
 */
export function ACCOUNT(str: string): Account {
    return new Account(N(str));
}
/**
 * convert a string to account_name, a.k.a u64.
 * @param str the account string to be converted.
 *
 * @example
 * import { NAME } from "ultrain-ts-lib/src/account";
 */
export function NAME(str: string): account_name {
    return N(str);
}
/**
 * convert an account name to string.
 * @param code the value of account_name to be converted to string.
 *
 * @example
 * import { RNAME } from "ultrain-ts-lib/src/account";
 */
export function RNAME(code: account_name): string {
    return RN(code);
}
/**
 * class Account stands for an account name,
 * it wraps methods which operating the balance.
 *
 * @example
 * import { Account } from "ultrain-ts-lib/src/account";
 */
export class Account {
    /**
     * to check if an account name is valid or not.
     * @param account account name to be checked.
     * @returns boolean
     */
    public static isValid(account: account_name): boolean {
        return AccountAPI.is_account(account);
    }

    /**
     *get the public key of an account
     *
     * @static
     * @param {account_name} account whose public key you are interested.
     * @param {string} type return value type, you can choose 'wif', or 'hex', default is 'wif'
     * @returns {string} public key of this account, the MAX length is 128, if the length of public key oversized, return an empty string.
     * @memberof Account
     */
    public static publicKeyOf(account: account_name, type: string = 'wif'): string {
        let data = new Uint8Array(128);
        let len = CryptoAPI.ts_public_key_of_account(account, changetype<usize>(data.buffer), data.length, string2cstr(type));
        if (len > 0) {
            return String.fromUTF8(changetype<usize>(data.buffer), len);
        } else {
            return "";
        }
    }

    private _value: u64;

    /**
     * construct an Account object.
     * @param code an account name, which is encoded u64.
     */
    constructor(code: account_name) {
        this._value = code;
    }

    /**
     * get property of code, which is account name.
     */
    public get code(): account_name {
        return this._value;
    }

    /**
     * get property of name, which is a readable string.
     */
    public get name(): string {
        return RN(this._value);
    }

    /**
     * get the balance of this account, the balance is issued by utrio.token.
     */
    public get balance(): Asset {
        return queryBalance(this.code);
    }

    /**
     * transfer Asset from this account to 'to' account.
     * @param to transfer Asset to 'to' account.
     * @param quantity how much Asset to transfer.
     * @param memo a memo note.
     */
    public transfer(to: account_name, quantity: Asset, memo: string): void {
        send(this.code, to, quantity, memo);
    }
}