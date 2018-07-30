
import "allocator/arena";

import { DataStream } from "../../src/datastream";
import { printstr, N, ultrain_assert, RN } from "../../src/utils";
import { Log } from "../../src/log";
import { Contract } from "../../lib/contract";
import { env as Action } from "../../internal/action.d";
import { Return } from "../../src/return";
import { queryBalance } from "../../src/balance";
import { NameEx, RNEX, NEX } from "../../src/name_ex";

 export function apply(receiver: u64, code: u64, action1: u64, action2: u64): void {
    Log.s("receiver: ").s(RN(receiver)).s(" code: ").s(RN(code)).flush();
    let sender: u64 = Action.current_sender();
    Log.s("current sender = ").s(RN(sender)).flush();
    let action: NameEx = new NameEx(action1, action2);

    var gol: HelloContract = new HelloContract(receiver);
    gol.apply(code, action);
}


class HelloContract extends Contract {

    dummy: u64;

    on_hi(name: u64, age: u32, msg: string): void {
        Log.s("on_hi: name = ").s(RN(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();
        // Return(10086);
        let ass = queryBalance(N("tester"));

        ass.prints("AAA: ");

        Return("call hi() succeed.");
    }

    on_empty_hi(): void {
        Log.s("this is a empyt hi function.").flush();
    }

    apply(code: u64, action: NameEx): void {
        Log.s("entry").flush();
        if (action == NEX("hi_it_is_a_long_func")) {
            let ds = this.getDataStream();
            let name = ds.read<u64>();

            Log.s("aaaaa  ").s(RN(name)).flush();
            let age = ds.read<u32>();
            let msg = ds.readString();

            let amount = ds.read<u64>();
            let symbol = ds.read<u64>();

            Log.s("amount = ").i(amount, 10).s(" symbol = ").i(symbol, 16).flush();
            this.on_hi(name, age, msg);
        } else if (action ==  NEX("hi_empty")) {
            this.on_empty_hi();
        } else {
            ultrain_assert(false, "unknown action");
        }
    }

}