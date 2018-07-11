import "../internal/alias.d";
import { ISerializable } from "./ISerializable";
import { Asset } from "../src/asset";
import { ultrain_assert, N } from "../src/utils";
import { DataStream } from "../src/datastream";
import { DBManager } from "../src/dbmanager";
import { TransferParams, dispatchInline } from "../src/action";
import { PermissionLevel } from "../src/permission-level";
import { env as action } from "../internal/action.d";
import "allocator/arena"

class Account implements ISerializable {
    balance: Asset;

    tokenIds: Array<id_type>;

    constructor(blc: Asset = null) {
        if (blc == null) blc = new Asset();

        this.tokenIds = new Array<id_type>();
        this.balance = blc;
    }

    primaryKey(): id_type { return this.balance.symbolName(); }

    deserialize(ds: DataStream): void {
        this.balance.deserialize(ds);
    }

    serialize(ds: DataStream): void {
        this.balance.serialize(ds);
    }
}



// TODO add serializable implements
class CurrencyStats implements ISerializable {
    supply: Asset;
    max_supply: Asset;
    issuer: account_name;
    current_id: id_type;

    constructor(supply: Asset = null, max_supply: Asset = null, issuer: u64 = 0) {
        if (supply == null) supply = new Asset();
        this.supply = supply;
        this.issuer = issuer;
    }

    primaryKey(): id_type { return this.supply.symbolName(); }

    increaseId(): id_type {
        this.current_id++;
        return this.current_id;
    }

    deserialize(ds: DataStream): void {
        this.supply.deserialize(ds);
        this.max_supply.deserialize(ds);
        this.issuer = ds.read<u64>();
        this.current_id = ds.read<u64>();
    }

    serialize(ds: DataStream): void {
        this.supply.serialize(ds);
        this.max_supply.serialize(ds);
        ds.write<u64>(this.issuer);
        ds.write<u64>(this.current_id);
    }
}


class Token implements ISerializable {

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

    constructor(id: id_type, owner: account_name, value: Asset, uri: string, name: string) {
        this.id = id;
        this.owner = owner;
        this.value = value;
        this.uri = uri;
        this.name = name;
    }

    deserialize(ds: DataStream): void {
        this.id = ds.read<u64>();
        this.owner = ds.read<u64>();
        this.value.deserialize(ds);
        this.uri = ds.readString();
        this.name = ds.readString();
    }

    serialize(ds: DataStream): void {
        ds.write<u64>(this.id);
        ds.write<u64>(this.owner);
        this.value.serialize(ds);
        ds.writeString(this.uri);
        
        ds.writeString(this.name);
    }

}

const STATSTABLE: string = "stat";
const ACCOUNTTABLE: string = "accounts";
const TOKENTABLE: string = "token";

export class Nft {

    private token_scope: u64;
    private receiver: u64;
    private stats_table: string;
    private account_table: string;
    private token_table: string;

    constructor(stats_table: string, account_table: string, token_table: string, receiver: u64) {
        this.stats_table = stats_table;
        this.account_table = account_table;
        this.token_table = token_table;
        this.receiver = receiver;
    }

    create(issuer: account_name, maximum_supply: Asset): void {

        action.require_auth(this.receiver);
        let sym = maximum_supply.symbolName();
        ultrain_assert(maximum_supply.isSymbolValid(), "token.create: invalid symbol name.");
        ultrain_assert(maximum_supply.isValid(), "token.create: invalid supply.");

        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, sym);
        let cs: CurrencyStats = new CurrencyStats(null, null, 0);

        let existing = statstable.get(sym, cs);
        ultrain_assert(!existing, "token with symbol already exists.");

        cs.supply.setSymbol(maximum_supply.getSymbol());
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        statstable.emplace(this.receiver, cs);
    }


    issue(to: account_name, quantity: Asset, uris: Array<string>, name: string, memo: string): void {

        ultrain_assert(quantity.isSymbolValid(), "token.issue: invalid symbol name");
        ultrain_assert(memo.length <= 256, "token.issue: memo has more than 256 bytes.");

        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(null, null, 0);
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.issue: symbol name is not exist.");


        action.require_auth(st.issuer);
        ultrain_assert(quantity.isValid(), "token.issue: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.max_supply.getSymbol(), "token.issue: symbol precision mismatch.");
        ultrain_assert(quantity.getAmount() <= st.max_supply.getAmount() - st.supply.getAmount(), "token.issue: quantity exceeds available supply.");
        ultrain_assert(quantity.getAmount() == uris.length, "token.issue: mismatch between number of tokens and uris provided");

        let tokenIds: Array<id_type>= new Array<id_type>();
        // issue token
        let oneAsset: Asset = new Asset(1, quantity.symbolName());
        for (let index = 0; index<uris.length; index++) {
            let uri = uris[index];
            let id = st.increaseId();
            tokenIds.push(id);
            this.mint(id, to, st.issuer, oneAsset, uri, name);
        }
        this.subSupply(quantity);

        this.addBalance(st.issuer, tokenIds, quantity, st.issuer);
    }


    transfer(from: account_name, to: account_name, token_id: id_type, memo: string): void {
        // tansfer token:id to user
        let tokens: DBManager<Token>= new DBManager<Token>(N(TOKENTABLE), this.receiver, this.token_scope);
        let token: Token = new Token(null, null, null, null, null);
        let tokenExisting = tokens.get(token_id, token);

        ultrain_assert(tokenExisting, "token.transfer: token with specified ID does not exist");

        let symname = token.symbolName();

        ultrain_assert(from != to, "token.transfer: cannot transfer to self.");
        action.require_auth(from);
        ultrain_assert(action.is_account(to), "token.transfer: to account does not exist.");

        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, symname);
        let st: CurrencyStats = new CurrencyStats(null, null, 0);
        let statExisting = statstable.get(symname, st);

        ultrain_assert(statExisting, "token.transfer symbol name is not exist.");

        action.require_recipient(from);
        action.require_recipient(to);

        ultrain_assert(from == token.owner, "token.transfer: sender does not own token with specified ID.");
        ultrain_assert(memo.length <= 256, "token.transfer: memo has more than 256 bytes.");

        // modify the owner and balance, transfer token
        token.owner = to;
        tokens.modify(token, 0);

        let oneToken = new Asset(1, symname);
        this.subBalance(from, token_id, oneToken);
        let token_ids = new Array<id_type>();
        token_ids.push(token_id);
        this.addBalance(to, token_ids, oneToken, from);
    }


    ownerof(id: id_type): account_name {

        let tokens: DBManager<Token>= new DBManager<Token>(N(TOKENTABLE), this.receiver, this.token_scope);
        let token: Token = new Token(null, null, null, null, null);
        let existing = tokens.get(id, token);

        ultrain_assert(existing, "getBalance failed, account is not existed.")
        return token.owner;
    }


    tokenOfOwnerByIndex(owner: account_name, sym_name: string, index: i32): account_name {
        let symname = N(sym_name);
        let accounts: DBManager<Account>= new DBManager<Account>(N(ACCOUNTTABLE), owner, symname);
        let account: Account = new Account();
        let existing = accounts.get(symname, account);

        ultrain_assert(existing, "tokenOfOwnerByIndex failed, account is not existed.")
        ultrain_assert(account.tokenIds.length>index, "tokenOfOwnerByIndex failed, the index beyond the range.");

        let token_id = account.tokenIds[index];
        return this.ownerof(token_id);
    }


    getSupply(sym_name: string): Asset {
        let symname = N(sym_name);
        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, symname);
        let st = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "getSupply failed, states is not existed.");
        return st.supply;
    }

    getBalance(owner: account_name, symname: symbol_name): Asset {
        let accounts: DBManager<Account>= new DBManager<Account>(N(ACCOUNTTABLE), owner, symname);
        let account = new Account();
        let existing = accounts.get(symname, account);
        ultrain_assert(existing, "getBalance failed, account is not existed.")

        return account.balance;
    }


    private mint(id: id_type, owner: account_name, ram_payer: account_name, value: Asset, uri: string, name: string): void {

        let tokens: DBManager<Token>= new DBManager<Token>(N(TOKENTABLE), this.receiver, value.getSymbol());
        let token: Token = new Token(id, owner, value, uri, name);
        tokens.emplace(ram_payer, token)
    }


    private addBalance(owner: account_name, token_ids: Array<id_type>, value: Asset, ram_payer: account_name): void {

        let toaccount: DBManager<Account>= new DBManager<Account>(N(ACCOUNTTABLE), this.receiver, owner);
        let to: Account = new Account(null);
        let existing = toaccount.get(value.symbolName(), to);

        if (!existing) {
            let account: Account = new Account(value);
            // account.tokenIds.push(token_ids);
            toaccount.emplace(ram_payer, account);
        } else {
            let amount = to.balance.getAmount() + value.getAmount();
            to.balance.setAmount(amount);
            // to.tokenIds.add(token_ids);
            toaccount.modify(to, 0); // ram_payer or 0 
        }
    }

    private subBalance(owner: account_name, token_id: id_type, value: Asset): void {

        let ats: DBManager<Account>= new DBManager<Account>(N(ACCOUNTTABLE), this.receiver, owner);
        let from: Account = new Account(null);
        let existing = ats.get(value.symbolName(), from);

        ultrain_assert(existing, "token.subBalance: from account is not exist.");
        ultrain_assert(from.balance.getAmount()>= value.getAmount(), "token.subBalance: overdrawing balance.");

        if (from.balance.getAmount() == value.getAmount()) {
            ats.erase(from);
        } else {
            let amount = from.balance.getAmount() - value.getAmount();
            from.balance.setAmount(amount);
            from.tokenIds = this.filterTokenId(from.tokenIds, token_id);
            ats.modify(from, owner);
        }
    }


    private filterTokenId(tokenIds: Array<id_type>, token_id: id_type): Array<id_type>{

        let result = new Array<id_type>();
        for (let index = 0; index <= tokenIds.length; index++) {
            if (tokenIds[index] != token_id) {
                result.push(tokenIds[index]);
            }
        }
        return result;
    }

    private subSupply(quantity: Asset): void {

        let symname = quantity.symbolName();
        let statstable: DBManager<CurrencyStats>= new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, symname);
        let st: CurrencyStats = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "subSupply failed, states is not existed.");

        let amount = st.supply.getAmount() + quantity.getAmount();
        st.supply.setAmount(amount);
        statstable.modify(st, 0);
    }

}