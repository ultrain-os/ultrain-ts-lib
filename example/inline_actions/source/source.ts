import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";
import { NAME, RNAME } from "../../../src/account";
import { Action, ActionImpl, SerializableToArray } from "../../../src/action";
import { PermissionLevel } from "../../../src/permission-level";
import { NEX } from "../../../lib/name_ex";
import { Transaction, OnErrorValue } from "../../../src/transaction";

class Parameters implements Serializable {
    name: string;
}

class SourceContract extends Contract {
    @action
    recepient(name: string): void {
        Log.s("hi, it is ").s(RNAME(this.receiver)).s(", I will call recepient with parameter: ").s(name).flush();
        Action.requireRecipient(NAME("jack"));
    }

    @action
    inline(name: string): void {
        Log.s("hi, it is ").s(RNAME(this.receiver)).s(", I will call sendInline with parameter: ").s(name).flush();
        let pl = new PermissionLevel(this.receiver, NAME("active"));
        let params = new Parameters();
        params.name = "messi";
        Action.sendInline([pl], NAME("jack"), NEX("onInline"), params);
    }

    @action
    deferred(name: string): void {
        Log.s("hi, it is ").s(RNAME(this.receiver)).s(", I will call Tx.send deferred with parameter: ").s(name).flush();

        let p = new Parameters();
        p.name = name;

        let act = new ActionImpl();
        act.account = NAME("jack");
        act.name = NEX("onDeferred");
        act.data = SerializableToArray(p);
        act.authorization.push(new PermissionLevel(this.receiver, NAME("active")));

        let tx = new Transaction(0);
        tx.actions.push(act);
        tx.header.delay_sec = 5;

        tx.send(1111, this.receiver, false);
    }

    public onError(): void {
        let error = OnErrorValue.fromCurrentAction();
        Log.s("I am ").s(RNAME(this.receiver)).s(", I get a onError calling for id: ").i(error.sender_id).flush();
        if (error.sender_id == 1111) {
            let tx = error.getTransaction();
            Log.s("onError action account: ").s(RNAME(tx.actions[0].account)).flush();
            // you send deferred tx but something wrong happened.
            // you can do something to handle this case.
        }
    }
}