
import "allocator/arena";

import { Log } from "../../src/log";
import { Contract } from "../../src/contract";
import { ACCOUNT, Account, NAME, RNAME } from "../../src/account";
import { Asset } from "../../src/asset";



class HelloContract extends Contract {
    @action
    hello(name: string, age: u32): void {
        Log.s("XXXX: hi ").s(name).s(", age = ").i(age).flush();
    }

}