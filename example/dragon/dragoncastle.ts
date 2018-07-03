
/**
 * @author fanliangqin@ultrain.io
 * @datetime 13:21:33, 06/28/2018
 * All rights reserved by ultrain.io @2018
 */
import { DragonCore } from "./dragoncore";
import { ultrain_assert } from "../../src/utils";
import { env as Action } from "../../internal/action.d";

export class DragonCastle {
    master: DragonCore;

    constructor(master: DragonCore) {
        this.master = master;
    }

    // event Transfer
    batchTransfer(to: account_name, tokenIds: u64[]): void {
        ultrain_assert(tokenIds.length <= 20, "Can not transfer more than 20 token ids in one batch transfer.");
        for (let i: u32 = 0; i < (<u32>(tokenIds.length)); i++) {
            if (this.master.ownerOf(tokenIds[i]) == Action.current_sender()) {
                this.master.transfer(to, tokenIds);
            }
        }
    }
}