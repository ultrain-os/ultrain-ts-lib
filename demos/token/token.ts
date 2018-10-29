/**
 * @author fanliangqin@ultrain.io
 */
import { Contract } from "../../src/contract";
import { Asset } from "../../src/asset";
import { TransferParams, dispatchInline } from "../../src/action";
import { PermissionLevel } from "../../lib/permission-level";
import { env as action } from "../../internal/action.d";
import { CurrencyStats, CurrencyAccount } from "../../lib/balance";
import { NAME, Account, RNAME } from "../../src/account";
import { now } from "../../src/time";
import { Return } from "../../src/return";
import { NEX } from "../../lib/name_ex";
import { Action } from "../../src/action";

class FrozenItem implements Serializable {
    from  : account_name;
    amount: Asset;
    until : u32;
    note  : string;

    /**
     *Creates an instance of FrozenItem.
     * @param {account_name} whose this token from whom
     * @param {Asset} amount how many token to freeze
     * @param {u32} until deadline, seconds since epoch.
     * @param {string} note a memo.
     * @memberof FrozenItem
     */
    constructor(/* whose: account_name, amount: Asset, until: u32, note: string */) {
        // this.from   = whose;
        // this.amount = amount;
        // this.until  = until;
        // this.note   = note;
    }

    init(whose: account_name, amount: Asset, until: u32, note: string): void {
         this.from   = whose;
        this.amount = amount;
        this.until  = until;
        this.note   = note;
    }

    @operator("==")
    private static _eq(lhs: FrozenItem, rhs: FrozenItem): boolean {
        return (lhs.from == rhs.from) && (lhs.amount.eq(rhs.amount)) && (lhs.until == rhs.until);
    }

    gte(it: FrozenItem): boolean {
        let status = ( this.from == it.from );
        status = this.amount.eq(it.amount) && status;
        status = this.until >= it.until && status;

        // Log.s("FrozenItem.gte: ").i(this.until).s(" >= ").i(it.until).s(" status = ").s(status? "true":"false").flush();
        return status;
    }
}

class FrozenToken implements Serializable {
    to: account_name = 0;
    treasure: FrozenItem[] = [];

    primaryKey(): u64 {
        return this.to;
    }
}

const StatsTable  : string = "stat";
const AccountTable: string = "accounts";
const FrozenTable : string = "frozen.tbl";

let FrezonAccount = NAME("utrio.freeze");

@database(CurrencyStats, StatsTable)
@database(CurrencyAccount, AccountTable)
@database(FrozenToken, FrozenTable)
export class Token extends Contract {

    @action
    public create(issuer: account_name, maximum_supply: Asset): void {
        Action.requireAuth (this.receiver);
        let sym = maximum_supply.symbolName();
        ultrain_assert(maximum_supply.isSymbolValid(), "token.create: invalid symbol name.");
        ultrain_assert(maximum_supply.isValid(), "token.create: invalid supply.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), this.receiver, sym);
        let cs: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0, now());

        let existing = statstable.get(sym, cs);
        ultrain_assert(!existing, "token with symbol already exists.");

        cs.supply.setSymbol(maximum_supply.getSymbol());
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        statstable.emplace(this.receiver, cs);
    }

    @action
    public issue(to: account_name, quantity: Asset, memo: string): void {
        ultrain_assert(quantity.isSymbolValid(), "token.issue: invalid symbol name");
        ultrain_assert(memo.length <= 256, "token.issue: memo has more than 256 bytes.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0, 0);
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.issue: symbol name is not exist.");

        Action.requireAuth(st.issuer);
        ultrain_assert(quantity.isValid(), "token.issue: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.max_supply.getSymbol(), "token.issue: symbol precision mismatch.");
        ultrain_assert(quantity.getAmount() <= st.max_supply.getAmount() - st.supply.getAmount(), "token.issue: quantity exceeds available supply.");

        let amount = st.supply.getAmount() + quantity.getAmount();
        st.supply.setAmount(amount);
        statstable.modify(0, st);
        this.addBalance(st.issuer, quantity, st.issuer);
        if (to != st.issuer) {
            let pl: PermissionLevel = new PermissionLevel();
            pl.actor = st.issuer;
            pl.permission = NAME("active");
            let params = new TransferParams(0, 0, new Asset(), "");
            params.from = st.issuer;
            params.to = to;
            params.quantity = quantity;
            params.memo = memo;
            dispatchInline(pl, this.receiver, NEX("transfer"), params);
        }
    }

    @action
    public transfer(from: u64, to: u64, quantity: Asset, memo: string): void {
        ultrain_assert(from != FrezonAccount, "token.transfer: can not transfer from account utrio.freeze.");
        ultrain_assert(from != to, "token.transfer: cannot transfer to self.");
        Action.requireAuth(from);
        ultrain_assert(Account.isValid(to), "token.transfer: to account does not exist.");

        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0, 0)
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.transfer symbol name is not exist.");

        Action.requireRecipient(from);
        Action.requireRecipient(to);

        ultrain_assert(quantity.isValid(), "token.transfer: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.supply.getSymbol(), "token.transfer: symbol precision mismatch.");
        ultrain_assert(memo.length <= 256, "token.transfer: memo has more than 256 bytes.");

        this.subBalance(from, quantity);
        this.addBalance(to, quantity, from);
    }

    /**
     * freeze some token, it will transfer token from Action.sender to 'utrio.freeze' account,
     * 'to' account can retrieval this token after deadline.
     * You can retrieval a whole frozen token at a time.
     *
     * @param {account_name} to who can retrieval this token.
     * @param {Asset} amount how many tokens froze.
     * @param {u32} deadline when this token can retrieval.
     * @param {string} note a memo.
     * @memberof Token
     */
    @action
    public freeze(to: account_name, amount: Asset, deadline: u32, note: string): void {
        ultrain_assert(Account.isValid(to), "account '" + RNAME(to) +"' does not exist.");

        let from = Action.sender;
        let frozendb = new DBManager<FrozenToken>(NAME(FrozenTable), this.receiver, 0);
        let item = new FrozenItem();
        item.init(from, amount, deadline, note);
        let frozen = new FrozenToken();
        frozen.to = to;
        let existing = frozendb.get(frozen.primaryKey(), frozen);
        frozen.treasure.push(item);
        if (existing) {
            frozendb.modify(this.receiver, frozen);
        } else {
            frozendb.emplace(this.receiver, frozen);
        }

        this.transfer(from, FrezonAccount, amount, note);
    }

    /**
     * to retrieval frozen tokens to the Action.sender
     *
     * @param {account_name} from who freeze this token.
     * @param {Asset} amount the whole token 'from' froze.
     * @memberof Token
     */
    @action
    public retrieval(from: account_name, amount: Asset): void {
        let owner = Action.sender;
        let frozendb = new DBManager<FrozenToken>(NAME(FrozenTable), this.receiver, 0);
        let frozen = new FrozenToken();
        frozen.to = owner;

        let existing = frozendb.get(frozen.primaryKey(), frozen);
        ultrain_assert(existing, "you do not have any token freezed.");
        let item = new FrozenItem();
        item.init(from, amount, now(), "");

        let expired = false;
        for (let i: i32 = 0; i < frozen.treasure.length; i++) {
            if (item.gte(frozen.treasure[i])) {
                frozen.treasure.splice(i, 1);
                expired = true;
                break;
            }
        }

        if (expired) {
            if (frozen.treasure.length == 0) {
                frozendb.erase(frozen.primaryKey());
            } else {
                frozendb.modify(this.receiver, frozen);
            }

            this.subBalance(FrezonAccount, amount);
            this.addBalance(owner, amount, this.receiver);
        } else {
            Return<string>("No expired token can retrieval.");
        }
    }

    @action
    public getSupply(symname: symbol_name): Asset {
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), this.receiver, symname);
        let st = new CurrencyStats(new Asset(), new Asset(), 0, 0);
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "getSupply failed, states is not existed.");
        return st.supply;
    }

    @action
    public getBalance(owner: account_name, symname: symbol_name): Asset {
        let accounts: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), owner, symname);
        let account = new CurrencyAccount(new Asset());
        let existing = accounts.get(symname, account);
        ultrain_assert(existing, "getBalance failed, account is not existed.")

        return account.balance;
    }


    private subBalance(owner: u64, value: Asset): void {
        let ats: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), this.receiver, owner);
        let from: CurrencyAccount = new CurrencyAccount(new Asset());
        let existing = ats.get(value.symbolName(), from);

        ultrain_assert(existing, "token.subBalance: from account is not exist.");
        ultrain_assert(from.balance.getAmount() >= value.getAmount(), "token.subBalance: overdrawing balance.");

        if (from.balance.getAmount() == value.getAmount()) {
            ats.erase(from.primaryKey());
        } else {
            let amount = from.balance.getAmount() - value.getAmount();
            from.balance.setAmount(amount);
            ats.modify(owner, from);
        }
    }

    private addBalance(owner: u64, value: Asset, ram_payer: u64): void {
        let toaccount: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), this.receiver, owner);
        let to: CurrencyAccount = new CurrencyAccount(new Asset());
        let existing = toaccount.get(value.symbolName(), to);

        if (!existing) {
            let a: CurrencyAccount = new CurrencyAccount(value);
            toaccount.emplace(ram_payer, a);
        } else {
            let amount = to.balance.getAmount() + value.getAmount();
            to.balance.setAmount(amount);
            toaccount.modify(0, to);
        }
    }
}