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


interface UGS06{

   totalsupply(sym: symbol_name): Asset;
	
   balanceof(sym: symbol_name, owner: account_name): Asset;		

   create(issuer: account_name, max_supply: Asset):void;
	
   issue(to: account_name, quantity: Asset, memo: string):void;

   transfer(form: account_name, to: account_name, quantity: Asset, memo:string):void ;

   // Event
   Transfer(from: account_name , to: account_name, quantity: Asset);
}



interface UGS09{

   totalsupply(sym: symbol_name): Asset;
	
   balanceof(sym: symbol_name, owner: account_name): Asset;		

   create(issuer: account_name, max_supply: Asset): void;
	
   issue(to: account_name, quantity: Asset, uris:Array<string>, memo: string):void;

   //owner infomation
   ownerof(sym: symbol_name, token_id: id_type): account_name;

   tokenmetadata(sym:symbol_name, token_id:id_type): string;  // uri RFC3890

   transfer(form: account_name, to: account_name, sym: symbol_name, id: id_type, memo:string): void;

   //Event 
   Transfer(from: account_name , to: account_name, quantity: Asset);
}


// Remove the sym
interface UGS09{

   totalsupply(sym: symbol_name): Asset;
	
   balanceof(sym: symbol_name, owner: account_name): Asset;		

   create(issuer: account_name, max_supply: Asset): void;
	
   issue(to: account_name, quantity: Asset, uris: Array<string>, name:string, memo: string):void;

   //owner infomation
   ownerof( token_id: id_type): account_name;

   tokenmetadata(token_id:id_type): string;  // uri RFC3890

   transfer(form: account_name, to: account_name, token_id: id_type, memo:string): void;

   //Event 
   Transfer(from: account_name , to: account_name, quantity: Asset);
}



interface UGSMataData{





}