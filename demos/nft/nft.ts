import "../../internal/alias.d";
import { Contract } from "../../lib/contract";
import { ISerializable } from "../../lib/ISerializable";
import { Asset } from "../../src/asset";
import { ultrain_assert, N } from "../../src/utils";
import { DataStream } from "../../src/datastream";
import { DBManager } from "../../src/dbmanager";
import { TransferParams, dispatchInline } from "../../src/action";
import { PermissionLevel } from "../../src/permission-level";
import { env as action } from "../../internal/action.d";
import "allocator/arena";
import { NEX } from "../../src/name_ex";

class Account implements ISerializable {
    balance: Asset;

    constructor(blc: Asset = null) {
        if (blc == null) blc = new Asset();

        this.balance = blc;
    }

    primaryKey(): u64 { return this.balance.symbolName(); }

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

   constructor(supply: Asset = null, max_supply:Asset= null, issuer: u64 = 0) {
        if (supply == null) supply = new Asset();
        this.supply = supply;
        this.issuer = issuer;
    }

    primaryKey(): u64 { return this.supply.symbolName(); }

      increaseId(): id_type{
         this.current_id ++;
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


class Token implements ISerializable{

   id: id_type;
   owner: account_name;
   value: Asset; //  1 asset
   uri: string; //
   name: string;

   primaryKey(): id_type { return this.id;}
   getSymbol(): account_name { return this.value.symbolName() }


   constructor(id: id_type, owner: account_name, value: Asset, uri: string, name: string){
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

export class Nft extends Contract{

   create(issuer:account_name,  maximum_supply: Asset): void{

      action.require_auth(this.receiver);
        let sym = maximum_supply.symbolName();
        ultrain_assert(maximum_supply.isSymbolValid(), "token.create: invalid symbol name.");
        ultrain_assert(maximum_supply.isValid(), "token.create: invalid supply.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, sym);
        let cs: CurrencyStats = new CurrencyStats(null, null, 0);

        let existing = statstable.get(sym, cs);
        ultrain_assert(!existing, "token with symbol already exists.");

        cs.supply.setSymbol(maximum_supply.getSymbol());
        cs.max_supply = maximum_supply;
        cs.issuer = issuer;
        statstable.emplace(this.receiver, cs);
   }


   issue(to: account_name, quantity: Asset, uris: Array<string>, memo: string):void {

        ultrain_assert(quantity.isSymbolValid(), "token.issue: invalid symbol name");
        ultrain_assert(memo.length <= 256, "token.issue: memo has more than 256 bytes.");

        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, quantity.symbolName());
        let st: CurrencyStats = new CurrencyStats(null, null, 0);
        let existing = statstable.get(quantity.symbolName(), st);

        ultrain_assert(existing, "token.issue: symbol name is not exist.");


        action.require_auth(st.issuer);
        ultrain_assert(quantity.isValid(), "token.issue: invalid quantity.");
        ultrain_assert(quantity.getSymbol() == st.max_supply.getSymbol(), "token.issue: symbol precision mismatch.");
        ultrain_assert(quantity.getAmount() <= st.max_supply.getAmount() - st.supply.getAmount(), "token.issue: quantity exceeds available supply.");
        ultrain_assert(quantity.getAmount() == uris.length, "token.issue: mismatch between number of tokens and uris provided");

        // issue token
        let oneAsset: Asset =  new Asset(1, quantity.symbolName());
        for(let index = 0 ; index < uris.length; index ++ ) {
           let uri = uris[index];
           let id = st.increaseId();
           this.mint(id, to, st.issuer, oneAsset, uri, memo);
        }
        this.subSupply(quantity);

        this.addBalance(st.issuer, quantity, st.issuer);
        if (to != st.issuer) {
            let pl: PermissionLevel = new PermissionLevel();
            pl.actor = st.issuer;
            pl.permission = N("active");
            let params = new TransferParams();
            params.from = st.issuer;
            params.to = to;
            params.quantity = quantity;
            params.memo = memo;
            // params.quantity.prints("before dispatchInline");
            dispatchInline(pl, this.receiver, NEX("transfer"), params);
        }
   }


   transfer(from: account_name, to: account_name, symname:symbol_name, id: id_type, memo: string): void{

      ultrain_assert(from != to, "token.transfer: cannot transfer to self.");
        action.require_auth(from);
        ultrain_assert(action.is_account(to), "token.transfer: to account does not exist.");

        // let symname: SymbolName = quantity.symbolName();
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, symname);
        let st: CurrencyStats = new CurrencyStats(null, null, 0);
        let statExisting = statstable.get(symname, st);

        ultrain_assert(statExisting, "token.transfer symbol name is not exist.");

        action.require_recipient(from);
        action.require_recipient(to);

        // tansfer token:id to user
        let tokens: DBManager<Token> = new DBManager<Token>(N(TOKENTABLE), this.receiver, symname);
        let token:Token = new Token(null, null, null, null, null);
        let tokenExisting = tokens.get(id, token);

         ultrain_assert(tokenExisting, "token.transfer: token with specified ID does not exist");

        ultrain_assert(from == token.owner , "token.transfer: sender does not own token with specified ID.");
        ultrain_assert(memo.length <= 256, "token.transfer: memo has more than 256 bytes.");

        // modify the owner and balance, transfer token
          token.owner = to;
          tokens.modify(0, token);

          let oneToken = new Asset(1, symname);
        this.subBalance(from, oneToken);
        this.addBalance(to, oneToken, from);
   }


   ownerof(id: id_type, symname: symbol_name): account_name {

      let tokens:DBManager<Token> = new DBManager<Token>(N(TOKENTABLE), this.receiver, symname);
      let token: Token = new Token(null, null, null, null, null);
      let existing = tokens.get(id, token);

      ultrain_assert(existing, "getBalance failed, account is not existed.")
      return token.owner;
   }

   private mint(id: id_type ,owner: account_name, ram_payer:account_name, value: Asset, uri:string, name:string):void{

      let tokens:DBManager<Token> = new DBManager<Token>(N(TOKENTABLE), this.receiver, value.getSymbol());
      let token:Token = new Token(id, owner, value, uri, name);
      tokens.emplace(ram_payer, token)
   }


   private addBalance(owner: account_name, value: Asset, ram_payer: account_name): void{

      let toaccount: DBManager<Account> = new DBManager<Account>(N(ACCOUNTTABLE), this.receiver, owner);
      let to: Account = new Account(null);
      let existing = toaccount.get(value.symbolName(), to);

      if(!existing) {
         let account:Account = new Account(value);
         toaccount.emplace(ram_payer, account);
      } else{
         let amount = to.balance.getAmount() + value.getAmount();
         to.balance.setAmount(amount);
         toaccount.modify(0, to); // ram_payer or 0
      }
   }

   private subBalance(owner: account_name, value: Asset):void{

      let ats: DBManager<Account> = new DBManager<Account>(N(ACCOUNTTABLE), this.receiver, owner);
        let from: Account = new Account(null);
        let existing = ats.get(value.symbolName(), from);

        ultrain_assert(existing, "token.subBalance: from account is not exist.");
        ultrain_assert(from.balance.getAmount() >= value.getAmount(), "token.subBalance: overdrawing balance.");

        if (from.balance.getAmount() == value.getAmount()) {
            ats.erase(from);
        } else {
            let amount = from.balance.getAmount() - value.getAmount();
            from.balance.setAmount(amount);
            ats.modify(owner, from);
        }

   }

   private subSupply(quantity: Asset): void{

      let symname = quantity.symbolName();
      let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, symname);
      let st: CurrencyStats = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "subSupply failed, states is not existed.");

        let amount = st.supply.getAmount() + quantity.getAmount();
        st.supply.setAmount(amount);
        statstable.modify(0, st);
   }


   public getSupply(symname: symbol_name): Asset {
        let statstable: DBManager<CurrencyStats> = new DBManager<CurrencyStats>(N(STATSTABLE), this.receiver, symname);
        let st = new CurrencyStats();
        let existing = statstable.get(symname, st);
        ultrain_assert(existing, "getSupply failed, states is not existed.");
        return st.supply;
    }

    public getBalance(owner: account_name, symname: symbol_name): Asset {
        let accounts: DBManager<Account> = new DBManager<Account>(N(ACCOUNTTABLE), owner, symname);
        let account = new Account();
        let existing = accounts.get(symname, account);
        ultrain_assert(existing, "getBalance failed, account is not existed.")

        return account.balance;
    }

}
