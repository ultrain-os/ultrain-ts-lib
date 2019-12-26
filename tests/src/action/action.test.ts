import { NAME } from "../../../src/account";
import { Contract } from "../../../src/contract";
import { Action, ACTION } from "../../../src/action";
import { NEX } from "../../../lib/name_ex";

const account_jack = NAME("jack");
const account_tony = NAME("tony");

class ActionContract extends Contract {

    @action
    test(): void {
        ultrain_assert(Action.sender == account_jack, "Action.sender exception.");
        ultrain_assert(Action.receiver == this.receiver, "Action.receiver exception.");

        ultrain_assert(Action.hasAuth(Action.sender), "Action.hasAuth must be true for Action.sender.");
        ultrain_assert(!Action.hasAuth(account_tony), "Action.hasAuth must be false for account_tony.");

        Action.requireAuth(Action.sender);
        Action.requireAuth2(Action.sender, NAME("active"));
        Action.requireRecipient(account_tony);

        let act = ACTION("test");
        ultrain_assert(NEX("test") == act.code, "Action.code exception.");
        ultrain_assert(act.name == "test", "Action.name exception.");
        // skip sendInline and sendContextFreeInline methods, test in other demos.
    }
}