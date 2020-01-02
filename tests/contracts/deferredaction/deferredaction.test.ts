import {Contract} from "../../../src/contract";
import { Transaction, OnErrorValue } from "../../../src/transaction";
import { ActionImpl, SerializableToArray } from "../../../src/action";
import { RNAME } from "../../../src/account";
import { NEX } from "../../../lib/name_ex";
import { PermissionLevel } from "../../../src/permission-level";
import { Log } from "../../../src/log";

class HelloData implements Serializable {
    name: string;
    age: u32;

    constructor(n: string, a: u32) {
        this.name = n;
        this.age = a;
    }
}

class DeferredActionContract extends Contract {

    constructor(code: u64) {
        super(code);
    }

    @action test(): void {
        this.sendDeferred(this.receiver);
    }

    sendDeferred(toWho: account_name): void {
        let act = new ActionImpl();
        act.account = toWho;
        act.name = NEX("response");
        act.data = SerializableToArray(new HelloData("God", 10000));
        act.authorization.push(new PermissionLevel(this.receiver, "active"));

        let tx = new Transaction(666);
        tx.actions.push(act);
        tx.header.expiration = 666;
        tx.header.max_cpu_usage_ms = 1;
        tx.header.net_usage_words = 2;
        tx.header.ref_block_num = 3;
        tx.header.ref_block_prefix = 4;
        tx.header.delay_sec = 5;

        tx.send(1234, this.receiver, false);
    }

    @action
    response(msg: string, payed: u32): void {
        Log.s("I am ").s(RNAME(this.receiver)).s(", I get transaction: ").s(msg).s(", payed: ").i(payed).flush();

        ultrain_assert(false, "Make the deferred action failed, to trigger onerror event.");
    }

    // over write onerror event.
    public onError(): void {
        let error = OnErrorValue.fromCurrentAction();
        Log.s("I am ").s(RNAME(this.receiver)).s(", I get a onError calling for id: ").i(error.sender_id).flush();
        let tx = error.getTransaction();
        Log.s("onError action account: ").s(RNAME(tx.actions[0].account)).flush();
    }
}