import "allocator/arena"
import { Log } from "../../lib/log";
import { Action } from "../../lib/action";
import { Name, NameToString } from "../../lib/name";

declare function action_data_size(): u32;
declare function read_action_data(ptr: usize, len: u32): u32;
declare function prints(ptr: usize): void;

class TestGeneric<T> {
    value: T;
    constructor(val: T) { this.value = val; }

    showType(): void {
        if (isInteger(this.value)) {
            Log.s("TestGeneric class instanced as integer: ").i(<i64>(this.value)).flush();
        } else if (isString(this.value)) {
            Log.s("TestGeneric class instanced as string: ").s(<string>(this.value)).flush();
        } else {
            Log.s("TestGeneric unknown value.");
        }
    }
}
export function apply(receiver: u64, code: u64, action: u64): void {
     // NOTICE: call Action.init() at first.
    let act: Action = new Action(action);
    let status: boolean = act.init();

    if (!status) {
        Log.s("Init action failed.").flush();
    } else {
        let hiName: Name = new Name("hi");
        if (hiName.equal(action)) {
            let target: i32 = <i32>act.i_params[0];
            if (target % 2 == 0) {
                let g: TestGeneric<u8> = new TestGeneric<u8>(0x41);
                g.showType();
            } else {
                let h: TestGeneric<string> = new TestGeneric<string>("hello ultrain.");
                h.showType();
            }
        } else {
            Log.s("Error: unknown action name : " + NameToString(action)).flush();
        }
    }
}