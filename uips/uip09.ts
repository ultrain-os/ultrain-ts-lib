import "../internal/alias.d";
import { Asset } from "../src/asset";


export interface UIP09{

	create(issuer: account_name, maximum_supply: Asset): void {};

	issue(to: account_name, quantity: Asset, uris: Array<string>, name: string, memo: string): void {};

	transfer(from: account_name, to: account_name, token_id: id_type, memo: string): void {};

	ownerof(id: id_type): account_name {};

	tokenbyindex(owner: account_name, sym_name: string, index: i32): account_name {};

	uriof(token_id: id_type): string {};

	getsupply(sym_name: string): Asset {};

	getbalance(owner: account_name, sym_name: string): Asset {};
}
