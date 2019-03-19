import { Map } from "../../../../lib/map";
import { Contract } from "../../../../src/contract";
import { NAME } from "../../../../src/account";
import { Log } from "../../../../src/log";
import { Asset, SYS } from "../../../../src/asset";
import { Action } from "../../../../src/action";


class SupplierMoney implements Serializable{
    //账户名
    account:        account_name;
    //可用资金
    availableMoney: Asset;
    //冻结资金
    freezeMoney:    Asset;
    str_map: Map<string,string> = new Map<string, string>();

    deserialize(ds: DataStream): void {
        this.account = ds.read<u64>();
        if (!this.availableMoney) {
            this.availableMoney = { } as Asset;
        }
        this.availableMoney.deserialize(ds);

        if (!this.freezeMoney) {
            this.freezeMoney = {} as Asset;
        }
        this.freezeMoney.deserialize(ds);

        if (!this.str_map) {
            this.str_map = { } as Map<string,string>;
        }
        this.str_map.deserialize(ds);
     }

      serialize(ds: DataStream): void {
        ds.write<account_name>(this.account);
        if (!this.availableMoney) {
            this.availableMoney = new Asset();
        }
        this.availableMoney.serialize(ds);
        if (!this.freezeMoney) {
            this.freezeMoney = new Asset();
        }
        this.freezeMoney.serialize(ds);
        if (!this.str_map) {
            this.str_map = new Map<string,string>();
        }
        this.str_map.serialize(ds);
     }

    primaryKey(): u64{
        return this.account;
    }
}

const SUPPLIER_MONEY_TABLE_NAME:string = "supp.money";
const ZERO_ASSET:Asset = new Asset(0,SYS);

@database(SupplierMoney,SUPPLIER_MONEY_TABLE_NAME)
class CacheManger extends Contract{
    supplierMoneyDB:DBManager<SupplierMoney>;

    private init():void{
        this.supplierMoneyDB = new DBManager<SupplierMoney>(NAME(SUPPLIER_MONEY_TABLE_NAME), NAME(SUPPLIER_MONEY_TABLE_NAME));
    }
    /**
     * 存储商注册
     * @param deposit   押金
     * @param price     发布的资源单价
     * @param ip        服务ip
     * @param port      服务端口
     * @param onService 是否接受新服务
     */
    @action
    public registerSupplier(deposit:Asset):void{
        this.init();
        // Log.s("onService:").flush();
        let supMon = new SupplierMoney();
        supMon.account = Action.sender;
        supMon.availableMoney = deposit;
        supMon.freezeMoney = ZERO_ASSET;
        this.supplierMoneyDB.emplace(supMon);
    }


    @action
    testSup(): void {
        this.init();
        let supMon = new SupplierMoney();
        Log.s("map size: ").i(supMon.str_map.size()).flush();

        if (this.supplierMoneyDB.exists(Action.sender)){
            this.supplierMoneyDB.get(Action.sender, supMon);
        }

        Log.s("map size: ").i(supMon.str_map.size()).flush();
        var keys = supMon.str_map.keys();
        for (let index =0 ; index < keys.length; index ++) {
            Log.s("map key: ").s(keys[index]).flush();
            Log.s("map val: ").s(supMon.str_map.get(keys[index])).flush();
        }
    }


    /**
     * 追加保证金
     * @param bail 保证金
     */
    @action
    public addBail(bail:Asset):void{
        this.init();
        let from = Action.sender;
        ultrain_assert(this.supplierMoneyDB.exists(from), "you have not registered");
        ultrain_assert(bail.isValid(),"wrong bail");
        //Asset.transfer(from,this.receiver,bail,MEMO_PREFIX+"add bail");
        let supMon = new SupplierMoney();
        this.supplierMoneyDB.get(from,supMon);
        supMon.availableMoney.add(bail);
        supMon.str_map.set("12", "12");
        this.supplierMoneyDB.modify(supMon);
    }

}