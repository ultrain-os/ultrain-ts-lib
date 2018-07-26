import { Asset } from "../src/asset";


export interface UIP09{

	/**
	 * Create a non-fungbile token
	 * 
	 * @param issuer the tokne issurer
	 * @param maximum_supply the total token supply amouont
	 */
	create(issuer: account_name, maximum_supply: Asset): void;

	/**
	 * Issue token to 'to' account
	 * 
	 * @param to the token receiver
	 * @param quantity the quantity of the token
	 * @param uris the token matadata, using uri to mark a token attribute, reference RFC 3986
	 * @param name the token name
	 * @param memo the memo for issue action
	 */
	issue(to: account_name, quantity: Asset, uris: Array<string>, name: string, memo: string): void;


	/**
	 * Transfer the token with the token_id form the account 'from' to the account 'to'
	 * 
	 * @param from the token sender
	 * @param to the token recevier
	 * @param token_id the identity of the token
	 * @param memeo the memeo for transfer action
	 */
	transfer(from: account_name, to: account_name, token_id: id_type, memo: string): void;

	/**
	 * Get the owner account by the token_id
	 * 
	 * @param token_id the identity token_id
	 * 
	 * @returns return the token owner account name
	 */
	ownerof(token_id: id_type): account_name;

	/**
	 * Get the owner token id by the index 
	 * 
	 * @param owner the owner account name
	 * @param sym_name the token symbal name 
	 * @param index the owner token index
	 * 
	 * @returns the token id of the token
	 */
	tokenbyindex(owner: account_name, sym_name: string, index: i32): id_type;

	/**
	 * Get the token attribute uri by the token_id
	 * 
	 * @param token_id the token id
	 * 
	 * @returns the uri of the token
	 */
	uriof(token_id: id_type): string;

	/**
	 * Get the total supply of the symbal token
	 * 
	 * @param sym_name the token sym name like "UGS"
	 * 
	 * @return  reutrn the supply asset
	 */
	getsupply(sym_name: string): Asset;

	/**
	 * Get the balance of the owner's symbal name token
	 * 
	 * @param owner the owner account 
	 * @param sym_name the symbal name
	 * 
	 * @return return the balance
	 */
	getbalance(owner: account_name, sym_name: string): Asset;
}
