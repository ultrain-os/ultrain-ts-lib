import "../internal/alias.d";
import { Asset } from "../src/asset";

/**
 * A standard interface for tokens
 */
export interface UIP09{

	/**
	 * Create a non-fungbile token
	 * 
	 * @param issuer the tokne issurer
	 * @param maximum_supply the total token supply amouont
	 */
	create(issuer: account_name, maximum_supply: Asset): void {};

	/**
	 * Issue token to 'to' account
	 * 
	 * @param to the token receiver
	 * @param quantity the quantity of the token
	 * @param memo the memo for issue action
	 */
	issue(to: account_name, quantity: Asset, memo: string): void {};


	/**
	 * Transfer the token with the token_id form the account 'from' to the account 'to'
	 * 
	 * @param from the token sender
	 * @param to the token recevier
	 * @param quantity the quantity of the token asset
	 * @param memeo the memeo for transfer action
	 */
	transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void {};

	
	/**
	 * Get the total supply of the symbal token
	 * 
	 * @param sym_name the token sym name like "UGS"
	 * 
	 * @return  reutrn the supply asset
	 */
	getsupply(sym_name: string): Asset {};

	/**
	 * Get the balance of the owner's symbal name token
	 * 
	 * @param owner the owner account 
	 * @param sym_name the symbal name
	 * 
	 * @return return the balance
	 */
	getbalance(owner: account_name, sym_name: string): Asset {};
}
