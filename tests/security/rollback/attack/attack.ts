import { Contract } from "../../../../src/contract";
import { PermissionLevel } from "../../../../src/permission-level";
import { TransferParams, Action } from "../../../../src/action";
import { NAME } from "../../../../src/account";
import { NEX, NameEx } from "../../../../lib/name_ex";
import { Asset } from "../../../../src/asset";
import { Log } from "../../../../src/log";

class Attack extends Contract {

    @action
    transfer(from: account_name, to: account_name, money: Asset, memo: string): void {
        Log.s("memo: ").s(memo).flush();
        let pl = new PermissionLevel(this.receiver, "active");
        let params = new TransferParams(from, to, money, memo);
        Action.sendInline([pl], "utrio.token", "transfer", params);

        // Asset.transfer(from, to, money, memo);
    }

    // public filterAction(code: u64): boolean {
    //     return Contract.filterAcceptTransferTokenAction(this.receiver, code, this.action);
    // }

    @action
    check(): void {
        Action.requireAuth2(this.receiver, NAME("permjack"));
        Log.s("Check permission successed.").flush();
    }
}
