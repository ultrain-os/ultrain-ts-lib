import "allocator/arena";
import { Contract } from "../../../../src/contract";
import { PermissionLevel } from "../../../../src/permission-level";
import { TransferParams, Action } from "../../../../src/action";
import { NAME } from "../../../../src/account";
import { NEX } from "../../../../lib/name_ex";
import { Asset } from "../../../../src/asset";


class Attack extends Contract {

    @action
    transfer(from: account_name, to: account_name, money: Asset, memo: string): void {
        let pl = new PermissionLevel(this.receiver, NAME("active"));
        let params = new TransferParams(from, to, money, memo);
        Action.sendInline([pl], NAME("utrio.token"), NEX("transfer"), params);

        Asset.transfer(from, to, money, memo);
    }

    // public filterAction(code: u64): boolean {
    //     return Contract.filterAcceptTransferTokenAction(this.receiver, code, this.action);
    // }
}
