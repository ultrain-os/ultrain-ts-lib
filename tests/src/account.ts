import { Account, NAME } from "../../src/account";
import { Contract } from "../../src/contract";
import { Log } from "../../src/log";
import { Asset } from "../../src/asset";
import { queryBalance } from "../../lib/balance";

class AccountContract extends Contract {

    @action
    test(): void {
        ultrain_assert(Account.codeStatus(this.receiver) == 1, "this.receiver must deployed to some smart contract.");
        ultrain_assert(Account.codeStatus(NAME("messi")) == 0, "messi must not deployed to some smart contract.");
        ultrain_assert(Account.codeStatus(NAME("aabbccddee")) == -1, "invalid account name.");
    }

    @action
    balance(owner: account_name): Asset {
        var b = queryBalance(owner);
        Log.s("balance is : ").s(b.toString()).flush();
        return b;
    }
}
