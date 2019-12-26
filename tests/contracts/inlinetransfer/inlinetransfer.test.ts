import { Contract } from "../../../src/contract";
import { Asset } from "../../../src/asset";
import { Action } from "../../../src/action";
import { NAME, RNAME } from "../../../src/account";

class InlineTransferContract extends Contract {
    /*
     * MUST set active permission of 'from' to utrio.token, otherwise the send operation will fail.
     * here is an example to set permission, the $PubKeyOfFrom is the public key of account $from:
     *
     * clultrain set account permission $from active
     * '{"threshold": 1,
     * "keys":[{"key": "$PubKeyOfFrom", "weight": 1}],
     * "accounts":[{"permission": {"actor": "$from", "permission": "utrio.code"}, "weight": 1}]}' owner -p $from
     */
    @action test(): void {
        this.transfer(this.receiver, NAME("tony"), new Asset(100000));
    }

    private transfer(from: account_name, to: account_name, bet: Asset): void {
        Action.requireAuth(from);
        let balance = Asset.balanceOf(from);
        ultrain_assert(balance.gte(bet), "balance of " + RNAME(from) + "is not enough.");
        balance.prints("banalce from: ");
        Asset.transfer(from, to, bet, "this is a inlinetransfer test");
    }
}