import { Asset } from "../src/asset";

/**
 * A standard interface for fungible tokens, also known as deeds.
 * 
 * Every fungible token are same with each other. They have the same value.
 * And token maybe be divided like money, we can exchange 1 dollar to 100 cent.
 * For exmaple:
 *  · Virtual assets - Virtual coin
 *  · Physical assets - RMB, normal book
 * 
 * @reference {@link ../demo/UIP06/StandardUIP06}
 */
export interface UIP06 {

	/**
	 * Create a fungible token
	 * 
	 * @param issuer the tokne issurer
	 * @param maximum_supply the total token supply amouont.
	 * eg: "1000.00 UGAS" mean that we create 1000.00 UGAS and it's precision is .00.
	 * 
	 */
	create(issuer: account_name, maximum_supply: Asset): void;

	/**
	 * Issue token to 'to' account
	 * 
	 * @param to the token receiver
	 * @param quantity the quantity of the token
	 * @param memo the memo for issue action
	 */
	issue(to: account_name, quantity: Asset, memo: string): void;


	/**
	 * Transfer the token with the token_id form the account 'from' to the account 'to'
	 * 
	 * @param from the token sender
	 * @param to the token recevier
	 * @param quantity the quantity of the token asset
	 * @param memeo the memeo for transfer action
	 */
	transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void;

	
	/**
	 * Get the total supply of the symbol token.
	 * 
	 * @param sym_name the token sym name like "UGAS"
	 * 
	 * @return  reutrn the total supply asset
	 */
	totalSupply(sym_name: string): Asset;

	/**
	 * Get the total supply the token that created.
	 * 
	 * @return return all total supply asset
	 */
	totalSupplies(): Asset[];

	/**
	 * Get the the issued supply of the symbol token.  
	 * 
	 * @param sys_name the token symbol name like "UGAS"
	 * 
	 * @return  reutrn the issued supply asset
	 */
	getSupply(sys_name: string): Asset;

	/**
	 * Get the balance of the owner's symbol name token
	 * 
	 * @param owner the owner account 
	 * @param sym_name the symbol name
	 * 
	 * @return return the balance
	 */
	balanceOf(owner: account_name, sym_name: string): Asset;
}
