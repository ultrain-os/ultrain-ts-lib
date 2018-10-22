import "allocator/arena";
import { env as AccountAPI } from "../internal/action.d";
import { Asset } from "./asset";
import { queryBalance, send } from "../lib/balance";
import { N, RN } from "../lib/name";
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
    public transfer(to: u64, quantity: Asset, memo: string): void {
        send(this.code, to, quantity, memo);
    }
}