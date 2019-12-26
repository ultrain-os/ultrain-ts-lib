import { Contract } from "../../../../src/contract";
import { RNAME, NAME } from "../../../../src/account";
import { Action } from "../../../../src/action";

class TargetContract extends Contract {
    @action
    recepient(name: string): void {
        Action.requireAuth(NAME("jack"));
        ultrain_assert(name == "rose", RNAME(this.receiver) + " on recepient action failed.");
    }

    @action
    onInline(name: string): void {
        Action.requireAuth(NAME("jack"));
        ultrain_assert(name == "rose", RNAME(this.receiver) + " on inline action failed.");
    }

    public filterAction(orginalReceiver: account_name): boolean {
        return true;
    }
}
