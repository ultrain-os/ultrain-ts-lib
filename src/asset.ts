/**
 * @author fanliangqin@ultrain.io
 */
import "../lib/alias";
import { printString, printStringL, printInt } from "../lib/utils";

type symbol_name = u64;

function string_to_symbol(precision: u8, str: string): u64 {
    return 0;
}

function is_valid_symbol(sym: symbol_name): boolean {
    return false;
}

function symbol_name_length(tmp: symbol_name): u32 {
    return 0;
}

class symbol_type {
    value: symbol_name;

    is_valid(): boolean { return is_valid_symbol(this.value); }
    precision(): u64 { return this.value & 0xff; }
    name(): u64 { return value >> 8; }
    name_length(): u32 { return symbol_name_length(this.value); }

    get(): symbol_name { return this.value; }

    print(show_precision: boolean = true): void {

    }
}

class extended_symbol extends symbol_type {
    contract: account_name;
    constructor(s: symbol_name = 0, c: account_name = 0) {
        // super();
        this.value = s;
        this.contract = c;
    }

    print(): void {
        super.print();
        printString("@");
        printInt(this.contract);
    }

    equal(es: extended_symbol): boolean {
        return this.value == es.value && this.contract == es.contract;
    }
}