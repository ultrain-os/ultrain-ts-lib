import "allocator/arena";
import { env as AccountAPI } from "../internal/action.d";
import { Asset } from "./asset";
import { queryBalance, send } from "../lib/balance";
import { N, RN } from "../lib/name";

export function ACCOUNT(str: string): Account {
    return new Account(str);
}

export function NAME(str: string): u64 {
    return N(str);
}

export function RNAME(code: u64): string {
    return RN(code);
}

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

    constructor(code: u64) {
        this._value = code;
    }

    public get code(): u64 {
        return this._value;
    }

    public get name(): string {
        return RN(this._value);
    }

    public get balance(): Asset {
        return queryBalance(this.code);
    }

    public transfer(to: u64, quantity: Asset, memo: string): void {
        send(this.code, to, quantity, memo);
    }
}