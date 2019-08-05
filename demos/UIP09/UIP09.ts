import { Action } from "../../src/action";
import { Contract } from "../../src/contract";
import { Asset, StringToSymbol } from "../../src/asset";
import { Log } from "../../src/log";
import { ACCOUNT, NAME, Account, RNAME } from "../../src/account";
import { UIP09 } from "../../uips/uip09";

class NftAccount implements Serializable {    
    balance: Asset;
    token_ids: Array<id_type>; // Current account token ids

    constructor(blc: Asset) {
        this.token_ids = new Array<id_type>();
        this.balance = blc;
    }

    primaryKey(): id_type { return this.balance.symbolName(); }

}


class CurrencyStats implements Serializable {
    supply: Asset;
    max_supply: Asset;
    issuer: account_name;

    constructor() {
        this.max_supply = new Asset();
        this.supply = new Asset();
        this.issuer = 0;
    }

    newInstance(supply: Asset, max_supply: Asset, issuer: account_name): CurrencyStats {
        var stats = new CurrencyStats();
        stats.max_supply = max_supply;
        stats.supply = supply;
        stats.issuer = issuer;
    }

    primaryKey(): id_type { return this.supply.symbolName(); }

    // deserialize(ds: DataStream): void {
    //     this.supply.deserialize(ds);
    //     this.max_supply.deserialize(ds);
    //     this.issuer = ds.read<account_name>();
    // }

    // serialize(ds: DataStream): void {
    //     this.supply.serialize(ds);
    //     this.max_supply.serialize(ds);
    //     ds.write<account_name>(this.issuer);
    // }
}


class Token implements Serializable {

    id: id_type;
    owner: account_name;
    value: Asset; //  1 asset
    uri: string; //
    name: string; // token name
    current_id: id_type;

    primaryKey(): id_type { return this.id; }
    symbolName(): account_name { return this.value.symbolName() }

    increaseId(): id_type {
        this.current_id++;
        return this.current_id;
    }

    print():void {
        Log.s("token id:").i(this.id).s("owner:").s(ACCOUNT(this.owner).name).s("uri:").s(this.uri).s("name:").s(this.name).s("current_id:").i(this.current_id).flush();
    }

    constructor(id: id_type , owner: account_name , value: Asset, uri: string, name: string) {
        this.id = id;
        this.owner = owner;
        this.value = value;
        this.uri = uri;
        this.name = name;
        this.current_id = <id_type> 0; //default current id value is zero
    }

    // deserialize(ds: DataStream): void {
    //     this.id = ds.read<id_type>();
    //     this.owner = ds.read<account_name>();
    //     this.value.deserialize(ds);
    //     this.uri = ds.readString();
    //     this.name = ds.readString();
    //     this.current_id = ds.read<id_type>();
    // }

    // serialize(ds: DataStream): void {
    //     ds.write<id_type>(this.id);
    //     ds.write<account_name>(this.owner);
    //     this.value.serialize(ds);
    //     ds.writeString(this.uri);
    //     ds.writeString(this.name);
    //     ds.write<id_type>(this.current_id);
    // }
}

const STATSTABLE: string = "stat";
const ACCOUNTTABLE: string = "accounts";
const TOKENTABLE: string = "token";

@database(Token, TOKENTABLE)
@database(CurrencyStats, STATSTABLE)
@database(NftAccount, ACCOUNTTABLE)
export class UIP09Impl extends Contract implements UIP09 {

    constructor(receiver: account_name) {
        super(receiver);
    }

    private static token_scope: u64 = NAME("token");
    private static TOKEN_PRIMARY_ID: id_type = 0;
    private static TOKEN_START: id_type = 1;

    @action
    create(issuer: account_name, maximum_supply: Asset): void {
        Action.requireAuth(this.receiver);
        let sym = maximum_supply.symbolName();
        ultrain_assert(maximum_supply.isSymbolValid(), "token.create: invalid symbol name.");
        ultrain_assert(maximum_supply.symbolPrecision() == 0, "token.create: symbol precision must be a whole number");
        ultrain_assert(maximum_supply.isValid(), "token.create: invalid supply.");

        let statstable: DBManager<CurrencyStats> = this.getStatDbManager();
        let cs: CurrencyStats = new CurrencyStats();

        let existing = statstable.get(sym, cs);
        ultrain_assert(!existing, "token with symbol already exists.");

        cs.supply.setSymbol(maximum_supply.getSymbol());
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        statstable.emplace(cs);
    }

    @action
    issue(to: account_name, quantity: Asset, uris: string[], name: string, memo: string): void {
        ultrain_assert(quantity.isSymbolValid(), "token.issue: invalid symbol name");
        ultrain_assert(quantity.symbolPrecision() == 0, "token.issue: symbol precision must be a whole number");
        ultrain_assert(memo.length <= 256, "token.issue: memo has more than 256 bytes.");

        let statstable: DBManager<CurrencyStats> = this.getStatDbManager();
        let st: CurrencyStats = new CurrencyStats();
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.issue: symbol name is not exist.");

        Action.requireAuth(st.issuer);
        ultrain_assert(quantity.isValid(), "token.issue: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.max_supply.getSymbol(), "token.issue: symbol precision mismatch.");
        ultrain_assert(quantity.getAmount() <= st.max_supply.getAmount() - st.supply.getAmount(), "token.issue: quantity exceeds available supply.");
        ultrain_assert(quantity.getAmount() == uris.length, "token.issue: mismatch between number of tokens and uris provided");
        ultrain_assert(uris.length != 0, "token.issue: issue quantity can't be zero.");

        let token_ids: Array<id_type> = new Array<id_type>();
        let token_id_start = this.availablePrimaryKey();
        let oneAsset: Asset = new Asset(1, quantity.getSymbol());

        for (let index = 0; index < uris.length; index++) {
            let uri = uris[index];
            token_ids.push(token_id_start);
            this.mint(token_id_start, to, oneAsset, uri, name);
            token_id_start++;
        }
        this.subSupply(quantity);
        this.addBalance(to, token_ids, quantity);
        this.updateMaxPrimaryKey(--token_id_start);
    }

    @action
    transfer(from: account_name, to: account_name, token_id: id_type, memo: string): void {
        // tansfer token:id to user
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), UIP09Impl.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let tokenExisting = tokens.get(token_id, token);

        ultrain_assert(tokenExisting, "token.transfer: token with specified ID does not exist");

        let symname = token.symbolName();

        ultrain_assert(from != to, "token.transfer: cannot transfer to self.");
        Action.requireAuth(from);
        ultrain_assert(Account.isValid(to), "token.transfer: to account does not exist.");

        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = this.getStatDbManager();
        let st: CurrencyStats = new CurrencyStats();
        let statExisting = statstable.get(symname, st);

        ultrain_assert(statExisting, "token.transfer symbol name is not exist.");

        Action.requireRecipient(from);
        Action.requireRecipient(to);

        ultrain_assert(from == token.owner, "token.transfer: sender does not own token with specified ID.");
        ultrain_assert(memo.length <= 256, "token.transfer: memo has more than 256 bytes.");

        // modify the owner and balance, transfer token
        token.owner = to;
        tokens.modify(token);

        let oneToken = token.value;
        this.subBalance(from, token_id, oneToken);
        let token_ids = new Array<id_type>();
        token_ids.push(token_id);
        this.addBalance(to, token_ids, oneToken);
    }

    @action
    ownerOf(id: id_type): string {
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), UIP09Impl.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let existing = tokens.get(id, token);

        ultrain_assert(existing, "getBalance failed, account is not existed.")
        return RNAME(token.owner);
    }

    @action
    uriOf(token_id: id_type): string {
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), UIP09Impl.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let existing = tokens.get(token_id, token);

        ultrain_assert(existing, "getBalance failed, account is not existed.")
        return token.uri;
    }

    @action("pureview")
    totalSupply(sym_name: string): Asset {
        let symname = StringToSymbol(0, sym_name) >> 8;
        let statstable: DBManager<CurrencyStats> = this.getStatDbManager();
        let st = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "totalSupply failed, states is not existed.");
        return st.max_supply;
    }

    @action("pureview")
    tokenByIndex(owner: account_name, sym_name: string, index: i32): id_type {
        let symname = StringToSymbol(0, sym_name) >> 8;
        let accounts: DBManager<NftAccount> = new DBManager<NftAccount>(NAME(ACCOUNTTABLE), owner);
        let account = new NftAccount(new Asset());
        let existing = accounts.get(symname, account);

        ultrain_assert(existing, "tokenByIndex failed, account is not existed.")
        ultrain_assert(account.token_ids.length > index, "tokenByIndex failed, the index beyond the range.");

        return account.token_ids[index];
    }

    @action
    balanceOf(owner: account_name, sym_name: string): Asset {
        let symname = StringToSymbol(0, sym_name) >> 8;
        let accounts: DBManager<NftAccount> = new DBManager<NftAccount>(NAME(ACCOUNTTABLE), owner);
        let account = new NftAccount(new Asset());
        let existing = accounts.get(symname, account);
        ultrain_assert(existing, "balanceOf failed, account is not existed or account has no the Asset.")

        return account.balance;
    }

    @action
    totalSupplies(): Asset[] {
        var statstable: DBManager<CurrencyStats> = this.getStatDbManager();
        var cursor: Cursor<CurrencyStats> = statstable.cursor();
        var supplies = new Array<Asset>();
        while (cursor.hasNext()) {
            let stat: CurrencyStats = cursor.get();
            supplies.push(stat.max_supply);
            cursor.next();
        }
        return supplies;
    }

    private getStatDbManager(): DBManager<CurrencyStats> {
        return new DBManager<CurrencyStats>(NAME(STATSTABLE), NAME(STATSTABLE));
    }

    private availablePrimaryKey(): id_type {
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), UIP09Impl.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let existing = tokens.get(UIP09Impl.TOKEN_PRIMARY_ID, token);
        let res =  existing ? token.increaseId() : UIP09Impl.TOKEN_START;
        return res;
    }

    private updateMaxPrimaryKey(max_token_id: id_type): void {
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), UIP09Impl.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let existing = tokens.get(UIP09Impl.TOKEN_PRIMARY_ID, token);

        if (!existing) {
            let to = new Token(UIP09Impl.TOKEN_PRIMARY_ID, 0, new Asset(), "", "");
            to.current_id = max_token_id;
            tokens.emplace(to);
        } else {
            ultrain_assert(max_token_id > token.current_id, "updateMaxPrimaryKey failed: the updated primary is less than the existing primay key.");
            token.current_id = max_token_id;
            tokens.modify(token);
        }
    }

    private mint(id: id_type, owner: account_name, value: Asset, uri: string, name: string): void {
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), UIP09Impl.token_scope);
        let token: Token = new Token(id, owner, value, uri, name);
        let existing = tokens.get(id, token);
        if (!existing) {
            tokens.emplace(token);
        }
    }

    private addBalance(owner: account_name, token_ids: Array<id_type>, value: Asset): void {
        let toaccount: DBManager<NftAccount> = new DBManager<NftAccount>(NAME(ACCOUNTTABLE), owner);
        let to: NftAccount = new NftAccount(new Asset());
        let existing = toaccount.get(value.symbolName(), to);

        if (!existing) {
            let account: NftAccount = new NftAccount(value);
            account.token_ids = token_ids;
            toaccount.emplace(account);
        } else {
            let amount = to.balance.getAmount() + value.getAmount();
            to.balance.setAmount(amount);
            for (let i = 0; i < token_ids.length; i++) {
                to.token_ids.push(token_ids[i]);
            }
            toaccount.modify(to);
        }
    }

    private subBalance(owner: account_name, token_id: id_type, value: Asset): void {
        let ats: DBManager<NftAccount> = new DBManager<NftAccount>(NAME(ACCOUNTTABLE), owner);
        let from: NftAccount = new NftAccount(new Asset());
        let existing = ats.get(value.symbolName(), from);

        ultrain_assert(existing, "token.subBalance: from account is not exist.");
        ultrain_assert(from.balance.getAmount() >= value.getAmount(), "token.subBalance: overdrawing balance.");

        if (from.balance.getAmount() == value.getAmount()) {
            ats.erase(from.primaryKey());
        } else {
            let amount = from.balance.getAmount() - value.getAmount();
            from.balance.setAmount(amount);
            let result = new Array<id_type>(from.token_ids.length - 1);
            for (let index = 0; index < from.token_ids.length; index++) {
                if (from.token_ids[index] != token_id) {
                    result.push(from.token_ids[index]);
                }
            }
            from.token_ids = result;
            ats.modify(from);
        }
    }

    private subSupply(quantity: Asset): void {
        let symname = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = this.getStatDbManager();
        let st: CurrencyStats = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "subSupply failed, states is not existed.");

        let amount = st.supply.getAmount() + quantity.getAmount();
        st.supply.setAmount(amount);
        statstable.modify(st);
    }
}
