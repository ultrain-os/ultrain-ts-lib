import "allocator/arena";
import { Contract } from "../../src/contract";
import { Log } from "../../src/log";
import { NAME, Account, RNAME } from "../../src/account";
import { Action, ActionImpl } from "../../src/action";
import { intToString } from "../../src/utils";
import { PermissionLevel } from "../../src/permission-level";
import { NEX } from "../../lib/name_ex";
import { Transaction, OnErrorValue } from "../../src/transaction";

class Person implements Serializable, Returnable {
    @primaryid
    id  : u64;
    name: string;

    toString(): string {
        return "[ id: " + intToString(this.id) + ", name: " + this.name + " ]";
    }
}

class EmptyParam implements Serializable {
    unused: u8;
}

const persontable = "tb.person";

@database(Person, persontable)
class HumanResource extends Contract {

    persondb: DBManager<Person>;

    constructor(code: u64) {
        super(code);
        this.persondb = new DBManager<Person>(NAME(persontable), this.receiver, NAME(persontable));
    }

    @action
    add(id: u64, name: string): Person {
        let p = new Person();
        p.id = id;
        p.name = name;

        let existing = this.persondb.exists(id);
        ultrain_assert(!existing, "this person has existed in db yet.");
        this.persondb.emplace(this.receiver, p);

        return p;
    }

    @action("pureview")
    failpv(): void {
        this.normal();
    }

    @action("pureview")
    pv(): void {
        Log.s("pureview: pv CALLED.").flush();
    }

    @action
    normal(): void {
        Log.s("pureview: normal CALLED.").flush();
        let p = new Person();
        let existing = this.persondb.get(0, p);
        ultrain_assert(existing, "the person does not exist.");

        p.name   = "normal modify it";
        this.persondb.modify(this.receiver, p);
    }

    @action("pureview")
    pv_to_pv(): void {
        Log.s("pureview: pv_to_pv CALLED.").flush();
        let pl = new PermissionLevel(this.receiver, NAME("active"));
        Action.sendInline([pl], this.receiver, NEX("pv"), new EmptyParam());
    }

    @action("pureview")
    pv_to_failpv(): void {
        Log.s("pureview: pv_to_failpv CALLED.").flush();
        let pl = new PermissionLevel(this.receiver, NAME("active"));
        Action.sendInline([pl], this.receiver, NEX("failpv"), new EmptyParam());
    }

    @action("pureview")
    pv_to_normal(): void {
        Log.s("pureview: pv_to_normal CALLED.").flush();
        let pl = new PermissionLevel(this.receiver, NAME("active"));
        Action.sendInline([pl], this.receiver, NEX("normal"), new EmptyParam());
    }

    @action
    normal_to_pv(): void {
        Log.s("pureview: normal_to_pv CALLED.").flush();

        let act = new ActionImpl();
        act.account = this.receiver;
        act.name = NEX("pv");
        act.data = [];
        act.authorization.push(new PermissionLevel(this.receiver, NAME("active")));

        let tx = new Transaction(666);
        tx.actions.push(act);
        tx.send(1111, this.receiver, false);
    }

    @action
    normal_to_failpv(): void {
        Log.s("pureview: normal_to_failpv CALLED.").flush();

        let act = new ActionImpl();
        act.account = this.receiver;
        act.name = NEX("failpv");
        act.data = [];
        act.authorization.push(new PermissionLevel(this.receiver, NAME("active")));

        let tx = new Transaction(666);
        tx.actions.push(act);
        tx.send(1111, this.receiver, false);
    }

    @action
    normal_to_normal(): void {
        Log.s("pureview: normal_to_normal CALLED.").flush();
        let act = new ActionImpl();
        act.account = this.receiver;
        act.name = NEX("normal");
        act.data = [];
        act.authorization.push(new PermissionLevel(this.receiver, NAME("active")));

        let tx = new Transaction(666);
        tx.delaySecs = 5;
        tx.actions.push(act);
        tx.send(2222, this.receiver, false);
    }

    // over write onerror event.
    public onError(): void {
        let error = OnErrorValue.fromCurrentAction();
        Log.s("I am ").s(RNAME(this.receiver)).s(", I get a onError calling for id: ").i(error.sender_id).flush();
        let tx = error.getTransaction();
        Log.s("onError action account: ").s(RNAME(tx.actions[0].account)).flush();
    }
}