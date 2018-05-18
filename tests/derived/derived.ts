import "allocator/arena"
import { Log } from "../../lib/log";
import { Action } from "../../lib/action";
import { Name, U64ToString } from "../../lib/name";

class Ancestor {
    ancestorFunc(): void {
        Log.s("AncestorFunc").flush();
    }

    virtualFunc(): void {
        Log.s(" Ancestor.virtualFunc").flush();
    }
}

class Descendent extends Ancestor {
    constructor() {}

    virtualFunc(): void {
        Log.s("Descendent.virtualFunc").flush();
    }

    descendentFunc(): void {
        Log.s("DescendentFunc").flush();
    }
}

/*OOPS(fanliangqin): assemblyscript没有实现基类和派生类之间的多态性！！！！！！ */
function callAncestor(ans: Ancestor): void {
    Log.s(" :: callAncestor :: ").flush();
    ans.virtualFunc();
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
            let idx: i32 = target % 6;
            Log.i(idx).s(" ");
            if (idx == 0) {
                Log.s("should output: [Descendent.virtualFunc]  == ");
                let a: Ancestor = new Descendent();
                a.virtualFunc();
                // callAncestor(a);
            } else if (idx == 1) {
                Log.s("should output: [AncestorFunc] == ");
                let a: Ancestor = new Descendent();
                a.ancestorFunc();
            } else if (idx == 2) {
                Log.s("should output: [Ancestor.virtualFunc] == ");
                let a: Ancestor = new Ancestor();
                a.virtualFunc();
            } else if (idx == 3) {
                Log.s("should output: [Descendent.virtualFunc] == ");
                let b: Descendent = new Descendent();
                b.virtualFunc();
            } else if (idx == 4) {
                Log.s("should output: [DescendentFunc] == ");
                let b: Descendent = new Descendent();
                b.descendentFunc();
            } else if (idx == 5) {
                Log.s("should output: [AncestorFunc] == ");
                let b: Descendent = new Descendent();
                b.ancestorFunc();
            }
        } else {
            Log.s("Error: unknown action name : " + U64ToString(action)).flush();
        }
    }
}