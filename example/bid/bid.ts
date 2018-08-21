import "allocator/arena";
import { Contract } from "../../lib/contract";
import { Asset } from "../../src/asset";
import { send } from "../../src/balance";
import { Action } from "../../src/action";
import { Log } from "../../src/log";
import { NEX, NameEx } from "../../src/name_ex";

class BidContract extends Contract {

    @action
    bid(to: account_name, bet: Asset): void {
        let from = Action.sender;

        send(from, to, bet, "this is a xxxx test");
        Log.s("BidContract bidded.").flush();
    }
}