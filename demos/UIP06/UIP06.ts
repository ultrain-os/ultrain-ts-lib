/**
 * @author fanliangqin@ultrain.io
 */
import { Contract } from "../../src/contract";
import { Asset, StringToSymbol } from "../../src/asset";
import { TransferParams } from "../../src/action";
import { PermissionLevel } from "../../src/permission-level";
import { env as action } from "../../internal/action.d";
import { CurrencyStats, CurrencyAccount } from "../../lib/balance";
import { NAME, Account, RNAME } from "../../src/account";
import { Action } from "../../src/action";
import { UIP06 } from "../../uips/uip06";

const StatsTable  : string = "stat";
const AccountTable: string = "accounts";
const SymTalbe:     string = "sym";

@database(Asset, SymTalbe)
@database(CurrencyStats, StatsTable)
@database(CurrencyAccount, AccountTable)
export class StandardUIP06 extends Contract implements UIP06{

    @action
    public create(issuer: account_name, maximum_supply: Asset): void {
        Action.requireAuth (this.receiver);
        let sym = maximum_supply.symbolName();
        ultrain_assert(maximum_supply.isSymbolValid(), "token.create: invalid symbol name.");
        ultrain_assert(maximum_supply.isValid(), "token.create: invalid supply.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), sym);
        let cs: CurrencyStats = new CurrencyStats();

        let existing = statstable.get(sym, cs);
        ultrain_assert(!existing, "token with symbol already exists.");

        cs.supply.setSymbol(maximum_supply.getSymbol());
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        statstable.emplace(cs);

        let symtable: DBManager<Asset> = new DBManager<Asset>(NAME(SymTalbe), NAME(SymTalbe));
        symtable.emplace(maximum_supply);
    }

    @action
    public issue(to: account_name, quantity: Asset, memo: string): void {
        ultrain_assert(quantity.isSymbolValid(), "token.issue: invalid symbol name");
        ultrain_assert(memo.length <= 256, "token.issue: memo has more than 256 bytes.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats();
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.issue: symbol name is not exist.");

        Action.requireAuth(st.issuer);
        ultrain_assert(quantity.isValid(), "token.issue: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.max_supply.getSymbol(), "token.issue: symbol precision mismatch.");
        ultrain_assert(quantity.getAmount() <= st.max_supply.getAmount() - st.supply.getAmount(), "token.issue: quantity exceeds available supply.");

        let amount = st.supply.getAmount() + quantity.getAmount();
        st.supply.setAmount(amount);
        statstable.modify(st);
        this.addBalance(st.issuer, quantity);
        if (to != st.issuer) {
            let pl: PermissionLevel = new PermissionLevel();
            pl.actor = st.issuer;
            pl.permission = "active";
            let params = new TransferParams(0, 0, new Asset(), "");
            params.from = st.issuer;
            params.to = to;
            params.quantity = quantity;
            params.memo = memo;
            let name = "transfer";
            Action.sendInline([pl], RNAME(this.receiver), name, params);
        }
    }

    @action
    public transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void {
        ultrain_assert(from != to, "token.transfer: cannot transfer to self.");
        Action.requireAuth(from);
        ultrain_assert(Account.isValid(to), "token.transfer: to account does not exist.");

        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats()
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.transfer symbol name is not exist.");

        Action.requireRecipient(from);
        Action.requireRecipient(to);

        ultrain_assert(quantity.isValid(), "token.transfer: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.supply.getSymbol(), "token.transfer: symbol precision mismatch.");
        ultrain_assert(memo.length <= 256, "token.transfer: memo has more than 256 bytes.");

        this.subBalance(from, quantity);
        this.addBalance(to, quantity);
    }

    @action("pureview")
    public totalSupply(sym_name: string): Asset {
        let symname = StringToSymbol(0, sym_name) >> 8;
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), symname);
        let st = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "totalSupply failed, stats is not existed.");
        return st.max_supply;
    }

    @action("pureview")
    totalSupplies(): Asset[] {
        var symDbManager = new DBManager<Asset>(NAME(SymTalbe), NAME(SymTalbe))
        var cursor: Cursor<Asset> = symDbManager.cursor();
        var supplies = new Array<Asset>();
        while (cursor.hasNext()) {
            let stat: Asset = cursor.get();
            supplies.push(stat);
            cursor.next();
        }
        return supplies;
    }

    @action("pureview")
    public getSupply(sym_name: string): Asset {
        let symname = StringToSymbol(0, sym_name) >> 8;
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(StatsTable), symname);
        let st = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "getSupply failed, stats is not existed.");
        return st.supply;
    }

    @action("pureview")
    public balanceOf(owner: account_name, sym_name: string): Asset {
        let symname: u64 = StringToSymbol(0, sym_name) >> 8;
        let accounts: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), owner);
        let account = new CurrencyAccount(new Asset());
        let existing = accounts.get(symname, account);
        ultrain_assert(existing, "balanceOf failed, account is not existed.")

        return account.balance;
    }

    private subBalance(owner: account_name, value: Asset): void {
        let ats: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), owner);
        let from: CurrencyAccount = new CurrencyAccount(new Asset());
        let existing = ats.get(value.symbolName(), from);

        ultrain_assert(existing, "token.subBalance: from account is not exist.");
        ultrain_assert(from.balance.getAmount() >= value.getAmount(), "token.subBalance: overdrawing balance.");

        if (from.balance.getAmount() == value.getAmount()) {
            ats.erase(from.primaryKey());
        } else {
            let amount = from.balance.getAmount() - value.getAmount();
            from.balance.setAmount(amount);
            ats.modify(from);
        }
    }

    private addBalance(owner: u64, value: Asset): void {
        let toaccount: DBManager<CurrencyAccount> = new DBManager<CurrencyAccount>(NAME(AccountTable), owner);
        let to: CurrencyAccount = new CurrencyAccount(new Asset());
        let existing = toaccount.get(value.symbolName(), to);

        if (!existing) {
            let a: CurrencyAccount = new CurrencyAccount(value);
            toaccount.emplace(a);
        } else {
            let amount = to.balance.getAmount() + value.getAmount();
            to.balance.setAmount(amount);
            toaccount.modify(to);
        }
    }
}