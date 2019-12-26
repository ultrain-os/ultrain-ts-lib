import { Log } from "../../../../src/log";
import { Contract } from "../../../../src/contract";
import { NAME, RNAME } from "../../../../src/account";
import { Action } from "../../../../src/action";
import { PermissionLevel } from "../../../../src/permission-level";

class Parameters implements Serializable {
    name: string;
}

class SourceContract extends Contract {
    @action
    recepient(name: string): void {
        Log.s("hi, it is ").s(RNAME(this.receiver)).s(", I will call recepient with parameter: ").s(name).flush();
        Action.requireRecipient(NAME("rose"));
    }

    @action
    inline(name: string): void {
        Log.s("hi, it is ").s(RNAME(this.receiver)).s(", I will call sendInline with parameter: ").s(name).flush();
        let pl = new PermissionLevel(this.receiver, "active");
        let params = new Parameters();
        params.name = "rose";
        Action.sendInline([pl], "rose", "onInline", params);
    }
}
