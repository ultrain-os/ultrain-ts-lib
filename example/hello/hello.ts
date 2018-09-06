
import "allocator/arena";

import { ultrain_assert } from "../../src/utils";
import { Log } from "../../src/log";
import { Contract } from "../../src/contract";
import { Action, ACTION } from "../../src/action";
import { Return } from "../../src/return";
import { ACCOUNT, Account, NAME, RNAME } from "../../src/account";

 export function apply(receiver: u64, code: u64, action1: u64, action2: u64): void {
    Log.s("receiver: ").s(RNAME(receiver)).s(" code: ").s(RNAME(code)).flush();
    let sender: u64 = Action.sender;
    Log.s("current sender = ").s(RNAME(sender)).flush();
    let action = new Action(action1, action2);

    var gol: HelloContract = new HelloContract(receiver);
    gol.apply(code, action);
}


class HelloContract extends Contract {

    dummy: u64;

    on_hi(name: u64, age: u32, msg: string): void {
        Log.s("on_hi: name = ").s(RNAME(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();
        // Return(10086);
        let tester = new Account("tester");
        let ass = tester.balance;
        ass.prints("AAA: ");

        Return("call hi() succeed.");
    }

    on_empty_hi(): void {
        Log.s("this is a empyt hi function.").flush();
    }

    apply(code: u64, action: Action): void {
        Log.s("entry").flush();
        if (action == ACTION("hi_it_is_a_long_func")) {
            let ds   = this.getDataStream();
            let name = ds.read<u64>();

            Log.s("aaaaa  ").s(RNAME(name)).flush();
            let age = ds.read<u32>();
            let msg = ds.readString();

            let amount = ds.read<u64>();
            let symbol = ds.read<u64>();

            Log.s("amount = ").i(amount, 10).s(" symbol = ").i(symbol, 16).flush();
            this.on_hi(name, age, msg);
        } else if (action ==  ACTION("hi_empty")) {
            this.on_empty_hi();
        } else {
            ultrain_assert(false, "unknown action");
        }
    }

}