| UIP | Title | Author | Type | Status | Created | Version |
|:----:| ---- | ---- | ---- | ---- | ---- | --- |
|88|UIP88锁仓通证标准|fanliangqin@ultrain.io<br>liaopeng@ultrain.io|建议|草稿|2019－04－25| 0.0.1 |

# 简介
该标准规范了在Ultrain链上发行带锁仓功能的同质化通证的合约行为。
# 动机
该标准规范了如何在Ultrain链上发行同质化、以及具有锁仓功能的通证合约，以便于在钱包、交易所等去中心化场景中复用该标准。
# 方法
```typescript

    /**
     * 创建通证
     * 同一个通证只能发行一次，避免增发。
     * @param issuer 通证发行人
     * @param maximum_supply 最大发行量.
     * eg: "1000.00 UGAS" mean that we create 1000.00 UGAS and it's precision is .00.
     *
     */
    create(issuer: account_name, maximum_supply: Asset): void;

    /**
     * 发行通证
     *
     * @param to 通证接收人帐号
     * @param quantity 发行的数量，必须小于maximum_supply
     * @param memo 备注
     */
    issue(to: account_name, quantity: Asset, memo: string): void;

    /**
     * 转帐功能
     *
     * @param from 转出帐号
     * @param to 转入帐号
     * @param quantity 转帐数量，如“10.00 UGAS”
     * @param memeo 转帐备注
     */
    transfer(from: account_name, to: account_name, quantity: Asset, memo: string): void;

    /**
     * 查询通证的最大发行量
     *
     * @param sym_name 通证的符号，如　"UGAS"
     *
     * @return  reutrn the total supply asset
     */
    maxSupply(sym_name: string): Asset;

    /**
     * 查询所有已创建的通证的最大发行量
     *
     * @return 所有已创建的通证的最大发行量列表
     */
    maxSupplies(): Asset[];

    /**
     * 查询已发行的通证数量 
     *
     * @param sys_name 通证的符号，如 "UGAS"
     *
     * @return  已经发行的通证资产数量
     */
    getIssued(sys_name: string): Asset;

    /**
     * 查询帐号的余额
     *
     * @param owner 帐号
     * @param sym_name 通证的符号，如“UGAS”
     *
     * @return return the balance
     */
    balanceOf(owner: account_name, sym_name: string): Asset;

    /**
     * 授予一笔amount的奖励给某个帐号
     *
     * @param {account_name} to　被授予人
     * @param {Asset} amount　授予的总数
     * @param {boolean} revokable 是否可以被撤回
     * @param {u32} endTime　到期时间，从Epoch开始的秒数
     * @param {string} note　备注
     * @returns {i32} 授权编号
     * @memberof UIP88
     */
    award(to: account_name, amount: Asset, revokable: boolean, endTime: u32, note: string): i32;

    /**
     * 撤销一笔奖励
     *
     * @param {account_name} owner　被撤销的帐号
     * @param {account_name} from 授予人帐号
     * @param {i32[]} awardNos 授权编号列表
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
     * @param {string} sym_name
     * @returns {u32}
     * @memberof UIP88
     */
    awardsCount(owner: account_name, sym_name: string): u32;

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
     * @param {string} sym_name 通证的符号
     * @returns {Asset}　被授予的总数
     * @memberof UIP88
     */
    totalAward(owner: account_name, sym_name: string): Asset;

```
# 数据结构
*Asset* 代表某一种通证。
```typescript
 Asset {
       amount: u64;
       symbol: u64;
 };
 ```
# 数据表
- stat  
stat表保存已经发行的Token信, 表参数设置：
``` 
     TableName:  stat  
     Scope:      symbol_name  
     PrimaryKey: symbol_name  
```
数据格式：
```
stat {
     supply:     Asset;
     max_supply: Asset;
     issuer:     account_name;
     timestamp:  u32;
}
```
- accounts  
accounts表保存持有人信息，表参数设置：
```
     TableName:  accounts
     Scope:      owner_account
     PrimaryKey: symbol_name
```
数据格式：
```
accounts {
     balance: Asset;
}
```

- awards
awards表保存奖励信息, 表参数设置：
```
     TableName:  awards
     Scope:      symbol_name
     PrimaryKey: owner_account
```
数据格式：
```
awards {
     to: account_name
     total: Asset
     fetched: Asset
     items: [
         {
             awardNo: i32
             from: account_name
             amount: Asset
             deadline: u32
             revokable: boolean
             memo: string
             revokeStatus: u8  #状态，是否已撤回, 0: 正常，1：已经撤回
         },...
     ]
}
```
# 事件
TBD
# 实现
参考`demos/uip88/`