
import "allocator/arena";
import { Log } from "../../lib/log";
import { Action } from "../../lib/action";
import "../../lib/types";
import { String2Name } from "../../lib/utils";

///@abi action
function hi(msg: string, age: i32): void {
    Log.s(" What a wonderful world, isnt is? " + msg).s(", you are too old at age ").i(age).flush();
}

export function apply(receiver: u64, code: u64, action: u64): void {
    let act: Action = new Action(action);
    // NOTICE: call Action.init at first.
    let status: boolean = act.init();

    if (!status) {
        Log.s("Init action failed.").flush();
    } else {
        let name: string = act.name;
        Log.s("apply action is: ").i(action).flush();
        let cname: Name = String2Name(name);
        Log.s("act.name action is: ").i(cname).flush();
        if (name == "hi") {
            hi(act.s_params[0], <i32>act.i_params[0]);
        } else {
            Log.s("Error: unknown action name : " + name).flush();
        }
    }
}
