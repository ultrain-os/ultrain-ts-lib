
import "allocator/arena";

import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";
import { RNAME, NAME } from "../../../src/account";
import { Action } from "../../../src/action";

class TargetContract extends Contract {
    @action
    recepient(name: string): void {
        Action.requireAuth(NAME("rose"));
        Log.s("hi, it is ").s(RNAME(this.receiver)).s(", recepient was called with parameter: ").s(name).flush();
    }

    @action
    onInline(name: string): void {
        Action.requireAuth(NAME("rose"));
        Log.s("hi, it is ").s(RNAME(this.receiver)).s(", onInline was called with parameter: ").s(name).flush();
    }

    @action
    onDeferred(name: string): void {
        Action.requireAuth(NAME("rose"));
        Log.s("hi, it is ").s(RNAME(this.receiver)).s(", onDeferred was called with parameter: ").s(name).flush();
    }

    public filterAction(orginalReceiver: account_name): boolean {
        return true;
    }
}