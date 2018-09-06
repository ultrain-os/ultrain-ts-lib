import "allocator/arena";
import { Contract } from "../../src/contract";
import { Asset } from "../../src/asset";
import { send, queryBalance } from "../../lib/balance";
import { ultrain_assert } from "../../src/utils";

class BalanceContract extends Contract {

    /*
     * MUST set active permission of 'from' to utrio.token, otherwise the send operation will fail.
     * here is an example to set permission, the $PubKeyOfFrom is the public key of account $from:
     *
     * clultrain set account permission $from active
     * '{"threshold": 1,
     * "keys":[{"key": "$PubKeyOfFrom", "weight": 1}],
     * "accounts":[{"permission: {"actor": "$from", "permission": "utrio.code"}, "weight": 1}]}' owner -p $from
     */
    @action
    transfer(from: account_name, to: account_name, bet: Asset): void {

        let balance = queryBalance(from);
        ultrain_assert(balance.gte(bet), "your balance is not enough.");

        balance.prints("banalce from: ");

        send(from, to, bet, "this is a xxxx test");
    }
}