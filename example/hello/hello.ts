
import "allocator/arena";

import { DataStream } from "../../src/datastream";
import { printstr, N, ultrain_assert, RN } from "../../src/utils";
import { Log } from "../../src/log";
import { Contract } from "../../src/contract";

export function apply(receiver: u64, code: u64, action: u64): void {
    Log.s("receiver: ").s(RN(receiver)).s(" code: ").s(RN(code)).flush();
    var gol: HelloContract = new HelloContract(receiver);
    gol.apply(code, action);
}

export class HelloContract extends Contract {

    dummy: u64;

    on_hi(name: u64, age: u32, msg: string): void {
        Log.s("on_hi: name = ").s(RN(name)).s(" age = ").i(age).s(" msg = ").s(msg).flush();
    }

    apply(code: u64, action: u64): void {
        if (action == N("hi")) {
            let ds = this.getDataStream();
            let name = ds.read<u64>();
            let age = ds.read<u32>();
            let msg = ds.readString();

            let amount = ds.read<u64>();
            let symbol = ds.read<u64>();

            Log.s("amount = ").i(amount).s(" symbol = ").i(symbol, 16).flush();
            this.on_hi(name, age, msg);
        } else {
            ultrain_assert(false, "unknown action");
        }
    }

}