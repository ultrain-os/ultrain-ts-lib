
import "allocator/arena";

import { DataStream } from "../../src/datastream";
import { printstr, N, ultrain_assert, RN } from "../../src/utils";
import { Log } from "../../src/log";
import { Contract } from "../../lib/contract";
import { env as Action } from "../../internal/action.d";
import { Return } from "../../src/return";
import { queryBalance } from "../../src/balance";
import { NameEx, RNEX ,NEX} from "../../src/name_ex";



class HelloContract extends Contract {

     dummy: u64;
     
     @action
     on_hi(name: u64, age: u32, msg: string, seq:u64[]): void {
        Log.s("on_hi: name = ").s(RN(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();

        Log.s("The age is:  ").i(age).flush();
        // Return(10086);
        let ass = queryBalance(N("tester"));

        ass.prints("AAA: ");

        Return("call hi() succeed.");
    }

}
