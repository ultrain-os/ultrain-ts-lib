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
 * @reference {@link ../demo/token/Token}
 */
export interface UIP88 {

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

    /**
     * 一次性授予amount的奖励给某个帐号
     *
     * @param {account_name} to　被授予人
     * @param {Asset} amount　授予的总数
     * @param {boolean} revokable 是否可以被撤回
     * @param {u32} endTime　到期时间，从Epoch开始的秒数
     * @param {string} note　备注
     * @returns {i32} 授权的编号
     * @memberof UIP88
     */
    award(to: account_name, amount: Asset, revokable: boolean, endTime: u32, note: string): i32;
    /**
     * 撤销一笔奖励
     *
     * @param {account_name} owner　被撤销的帐号
     * @param {account_name} from 授予人帐号
     * @param {i32} awardNo 授权编号列表
     * @memberof UIP88
     */
    revoke(owner: account_name, from: account_name, awardNos: i32[]): void;
    /**
     * 查询已经解锁的总额。
     *
     * @param {account_name} owner　被授予人
     * @param {string} token　Token的名字
     * @returns {Asset} 可以取出的总额
     * @memberof UIP88
     */
    available(owner: account_name, token: string): Asset;
    /**
     * 被授予人取出自己的奖励。
     *
     * @param {account_name} owner 被授予人帐号
     * @param {Asset} amount　取出数额
     * @memberof UIP88
     */
    fetch(owner: account_name, amount: Asset): void;
    /**
     * 奖励的期数
     *
     * @param {account_name} owner
     * @param {string} token
     * @returns {u32}
     * @memberof UIP88
     */
    awardsCount(owner: account_name, token: string): u32;

    /**
     * 查询某个帐号的所有奖励列表
     *
     * @param {account_name} 被授予人的帐号
     * @returns {string[]}　json格式的string，描述奖励详情
     * @memberof UIP88
     */
    awardsLists(owner: account_name): string[];

    /**
     * 奖励的总数
     *
     * @param {account_name} owner　被授予人
     * @param {string} token　Token的名字
     * @returns {Asset}　被授予的总数
     * @memberof UIP88
     */
    totalAward(owner: account_name, token: string): Asset;
}

/**
 * Data Structs
 *
 * Asset {
 *      amount: u64;
 *      symbol: u64;
 * };
 *
 * Tables:
 * 1. stat表保存已经发行的Token信息：
 *      TableName:  stat
 *      Scope:      symbol_name
 *      PrimaryKey: symbol_name
 * 数据格式：
 * stat {
 *      supply:     Asset;
 *      max_supply: Asset;
 *      issuer:     account_name;
 *      timestamp:  u32;
 * }
 * 2. accounts表保存持有人信息:
 *      TableName:  accounts
 *      Scope:      owner_account
 *      PrimaryKey: symbol_name
 * 数据格式：
 * accounts {
 *      balance: Asset;
 * }
 * 3. awards表保存奖励信息
 *      TableName:  awards
 *      Scope:      symbol_name
 *      PrimaryKey: owner_account
 * 数据格式：
 * awards {
 *      to: account_name
 *      total: Asset
 *      fetched: Asset
 *      items: [
 *          {
 *              awardNo: i32
 *              from: account_name
 *              amount: Asset
 *              deadline: u32
 *              revokable: boolean
 *              memo: string
 *              revokeStatus: u8  #状态，是否已撤回, 0: 正常，1：已经撤回
 *          },...
 *      ]
 * }
*/