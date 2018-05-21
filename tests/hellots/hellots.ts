
import "allocator/arena";
import { Log } from "../../lib/log";
import { Action, hasAuth, requireAuth } from "../../lib/action";
import "../../lib/types";
import { Name, NameToString } from "../../lib/name";

///@abi action
function hi(msg: string, age: i32): void {
    Log.s(" What a wonderful world, isnt is? " + msg).s(", you are too old at age ").i(age).flush();
}

export function apply(receiver: u64, code: u64, action: u64): void {
    // check authority if need.
    let authed: boolean = hasAuth(receiver);
    Log.s("does receiver has authority? ").s(authed ? "YES" : "NO").flush();
    requireAuth(receiver);

    // NOTICE: call Action.init() at first.
    let act: Action = new Action(action);
    let status: boolean = act.init();

    if (!status) {
        Log.s("Init action failed.").flush();
    } else {
        let hiName: Name = new Name("hi");
        Log.s("apply action is: ").i(action).flush();
        let rrrr:string = NameToString(action);
        Log.s("test U16ToString is ").s(rrrr).flush();

        if (hiName.equal(action)) {
            hi(act.s_params[0], <i32>act.i_params[0]);
        } else {
            Log.s("Error: unknown action name : " + NameToString(action)).flush();
        }
    }
}
