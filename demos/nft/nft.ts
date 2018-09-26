import { Action } from "../../src/action";
import { Contract } from "../../src/contract";
import { Asset } from "../../src/asset";
import { DBManager } from "../../src/dbmanager";
import { Log } from "../../src/log";
import { ultrain_assert } from "../../src/utils";
import { ACCOUNT, NAME, Account } from "../../src/account";

class NftAccount implements Serializable {
    balance: Asset;
    token_ids: Array<id_type>; // Current account token ids

    constructor(blc: Asset) {
        this.token_ids = new Array<id_type>();
        this.balance = blc;
    }

    primaryKey(): id_type { return this.balance.symbolName(); }

    deserialize(ds: DataStream): void {
        this.balance.deserialize(ds);
        this.token_ids = ds.readVector<id_type>();
    }

    serialize(ds: DataStream): void {
        this.balance.serialize(ds);
        ds.writeVector<id_type>(this.token_ids);
    }
}


class CurrencyStats implements Serializable {
    supply: Asset;
    max_supply: Asset;
    issuer: account_name;

    constructor(supply: Asset, max_supply: Asset, issuer: account_name) {
        this.max_supply = max_supply;
        this.supply = supply;
        this.issuer = issuer;
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
const ACCOUNTTABLE: string = "account";
const TOKENTABLE: string = "token";

@database(Token, TOKENTABLE)
@database(CurrencyStats, STATSTABLE)
@database(NftAccount, ACCOUNTTABLE)
export class Nft extends Contract {

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

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, sym);
        let cs: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0);

        let existing = statstable.get(sym, cs);
        ultrain_assert(!existing, "token with symbol already exists.");

        cs.supply.setSymbol(maximum_supply.getSymbol());
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        statstable.emplace(this.receiver, cs);
    }

    @action
    issue(to: account_name, quantity: Asset, uris: string[], name: string, memo: string): void {

        ultrain_assert(quantity.isSymbolValid(), "token.issue: invalid symbol name");
        ultrain_assert(quantity.symbolPrecision() == 0, "token.issue: symbol precision must be a whole number");
        ultrain_assert(memo.length <= 256, "token.issue: memo has more than 256 bytes.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0);
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
            this.mint(token_id_start, to, st.issuer, oneAsset, uri, name);
            token_id_start++;
        }
        this.subSupply(st.issuer, quantity);
        this.addBalance(to, token_ids, quantity, st.issuer);
        this.updateMaxPrimaryKey(st.issuer, --token_id_start);
    }

    @action
    transfer(from: account_name, to: account_name, token_id: id_type, memo: string): void {
        // tansfer token:id to user
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), this.receiver, Nft.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let tokenExisting = tokens.get(token_id, token);

        ultrain_assert(tokenExisting, "token.transfer: token with specified ID does not exist");

        let symname = token.symbolName();

        ultrain_assert(from != to, "token.transfer: cannot transfer to self.");
        Action.requireAuth(from);
        ultrain_assert(Account.isValid(to), "token.transfer: to account does not exist.");

        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, symname);
        let st: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0);
        let statExisting = statstable.get(symname, st);

        ultrain_assert(statExisting, "token.transfer symbol name is not exist.");

        Action.requireRecipient(from);
        Action.requireRecipient(to);

        ultrain_assert(from == token.owner, "token.transfer: sender does not own token with specified ID.");
        ultrain_assert(memo.length <= 256, "token.transfer: memo has more than 256 bytes.");

        // modify the owner and balance, transfer token
        token.owner = to;
        tokens.modify(0, token);

        let oneToken = token.value;
        this.subBalance(from, token_id, oneToken);
        let token_ids = new Array<id_type>();
        token_ids.push(token_id);
        this.addBalance(to, token_ids, oneToken, from);
    }

    ownerOf(id: id_type): account_name {
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), this.receiver, Nft.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let existing = tokens.get(id, token);

        ultrain_assert(existing, "getBalance failed, account is not existed.")
        return token.owner;
    }

    uriOf(token_id: id_type): string {
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), this.receiver, Nft.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let existing = tokens.get(token_id, token);

        ultrain_assert(existing, "getBalance failed, account is not existed.")
        return token.uri;
    }

    tokenByIndex(owner: account_name, sym_name: string, index: i32): id_type {
        let symname = NAME(sym_name);
        let accounts: DBManager<NftAccount> = new DBManager<NftAccount>(NAME(ACCOUNTTABLE), owner, symname);
        let account: NftAccount = new NftAccount(new Asset());
        let existing = accounts.get(symname, account);

        ultrain_assert(existing, "tokenOfOwnerByIndex failed, account is not existed.")
        ultrain_assert(account.token_ids.length > index, "tokenOfOwnerByIndex failed, the index beyond the range.");

        return account.token_ids[index];
    }

    getSupply(sym_name: string): Asset {
        let symname = NAME(sym_name);
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, symname);
        let st = new CurrencyStats(new Asset(), new Asset(), 0);
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "getSupply failed, states is not existed.");
        return st.supply;
    }

    getBalance(owner: account_name, sym_name: string): Asset {
        let symname = NAME(sym_name);
        let accounts: DBManager<NftAccount> = new DBManager<NftAccount>(NAME(ACCOUNTTABLE), owner, symname);
        let account = new NftAccount(new Asset());
        let existing = accounts.get(symname, account);
        ultrain_assert(existing, "getBalance failed, account is n ot existed.")

        return account.balance;
    }

    private availablePrimaryKey(): id_type {
        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), this._receiver, Nft.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let existing = tokens.get(Nft.TOKEN_PRIMARY_ID, token);
        let res =  existing ? token.increaseId() : Nft.TOKEN_START;
        return res;
    }

    private updateMaxPrimaryKey(ram_payer: u64, max_token_id: id_type): void {

        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), this.receiver, Nft.token_scope);
        let token: Token = new Token(0, 0, new Asset(), "", "");
        let existing = tokens.get(Nft.TOKEN_PRIMARY_ID, token);

        if (!existing) {
            let to = new Token(Nft.TOKEN_PRIMARY_ID, 0, new Asset(), "", "");
            to.current_id = max_token_id;
            tokens.emplace(ram_payer, to);
        } else {
            ultrain_assert(max_token_id > token.current_id, "updateMaxPrimaryKey failed: the updated primary is less than the existing primay key.");
            token.current_id = max_token_id;
            tokens.modify(0, token);
        }
    }

    private mint(id: id_type, owner: account_name, ram_payer: account_name, value: Asset, uri: string, name: string): void {

        let tokens: DBManager<Token> = new DBManager<Token>(NAME(TOKENTABLE), this.receiver, Nft.token_scope);
        let token: Token = new Token(id, owner, value, uri, name);
        let existing = tokens.get(id, token);
        tokens.emplace(ram_payer, token);
    }

    private addBalance(owner: account_name, token_ids: Array<id_type>, value: Asset, ram_payer: account_name): void {
        let toaccount: DBManager<NftAccount> = new DBManager<NftAccount>(NAME(ACCOUNTTABLE), this.receiver, owner);
        let to: NftAccount = new NftAccount(new Asset());
        let existing = toaccount.get(value.symbolName(), to);

        if (!existing) {
            let account: NftAccount = new NftAccount(value);
            account.token_ids = token_ids;
            toaccount.emplace(ram_payer, account);
        } else {
            let amount = to.balance.getAmount() + value.getAmount();
            to.balance.setAmount(amount);
            for (let i = 0; i < token_ids.length; i++) {
                to.token_ids.push(token_ids[i]);
            }
            toaccount.modify(ram_payer, to); // ram_payer or 0
        }
    }

    private subBalance(owner: account_name, token_id: id_type, value: Asset): void {

        let ats: DBManager<NftAccount> = new DBManager<NftAccount>(NAME(ACCOUNTTABLE), this.receiver, owner);
        let from: NftAccount = new NftAccount(new Asset());
        let existing = ats.get(value.symbolName(), from);

        ultrain_assert(existing, "token.subBalance: from account is not exist.");
        ultrain_assert(from.balance.getAmount() >= value.getAmount(), "token.subBalance: overdrawing balance.");

        if (from.balance.getAmount() == value.getAmount()) {
            Log.s("sub Balance erase").flush();
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
            ats.modify(owner, from);
        }
    }

    private subSupply(ram_payer: u64, quantity: Asset): void {

        let symname = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(NAME(STATSTABLE), this.receiver, symname);
        let st: CurrencyStats = new CurrencyStats(new Asset(), new Asset(), 0);
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "subSupply failed, states is not existed.");

        let amount = st.supply.getAmount() + quantity.getAmount();
        st.supply.setAmount(amount);
        statstable.modify(ram_payer, st);
    }

}
