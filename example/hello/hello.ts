
import "allocator/arena";

import { Log } from "../../src/log";
import { Contract } from "../../src/contract";
import { ACCOUNT, Account, NAME, RNAME } from "../../src/account";
import { Asset } from "../../src/asset";



class HelloContract extends Contract {
    @action
    hi(name: account_name, ast: Asset): void {
        Log.s("hi ").s(RNAME(name)).flush();
        ast.prints("Hello: ");
    }

}