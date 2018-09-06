import { env as db } from "../../../internal/db.d";
import { ultrain_assert } from "../../../src/utils";

export class DBHelper{
    _owner:         account_name;
    _scope:         u64;
    _table_name:    u64;
    constructor(owner:account_name,scope:u64,table:u64){
        this._owner=owner;
        this._scope=scope;
        this._table_name=table;
    }

    public static insert(_owner:account_name,_scope:u64,_table_name:u64,payer:account_name, ds: DataStream, key:u64):void{
        ultrain_assert(!DBHelper.exist(_owner,_scope,_table_name,key),"key has exist!");
        db.db_store_i64(_scope, _table_name, payer, key, ds.buffer, ds.pos);
    }

    public insert(payer:account_name, ds: DataStream, key:u64):void{
        DBHelper.insert(this._owner,this._scope,this._table_name, payer,ds,key);
    }

    public static update(_owner:u64,_scope:u64,_table_name:u64,payer: u64, ds: DataStream,key:u64):void{
        let itr = DBHelper.find(_owner,_scope,_table_name,key);
        ultrain_assert(itr >= 0, "object passed to update is not found.");
        db.db_update_i64(itr, payer, ds.buffer, ds.pos);
    }

    public update(payer: u64, ds: DataStream,key:u64):void{
        DBHelper.update(this._owner,this._scope,this._table_name,payer,ds,key);
    }

    public static get(_owner:u64,_scope:u64,_table_name:u64,primary: u64):DataStream{
        let itr: i32 = db.db_find_i64(_owner, _scope, _table_name, primary);
        ultrain_assert(itr >= 0,"key.issue: primary is not exist");
        let len: i32 = db.db_get_i64(itr, 0, 0);
        let arr = new Uint8Array(len);
        let ds = new DataStream(changetype<usize>(arr.buffer), len);
        db.db_get_i64(itr, changetype<usize>(arr.buffer), len);
        return ds;
    }

    public get(primary: u64):DataStream{
        return DBHelper.get(this._owner,this._scope,this._table_name,primary);
    }

    public static exist(_owner:u64,_scope:u64,_table_name:u64,primary: u64): boolean {
        let itr: i32 = DBHelper.find(_owner,_scope,_table_name,primary);
        return itr< 0 ? false : true;
    }

    public exist(primary: u64): boolean {
        return DBHelper.exist(this._owner,this._scope,this._table_name,primary);
    }

    private static find(_owner:u64,_scope:u64,_table_name:u64,primary: u64): i32 {
        let itr: i32 = db.db_find_i64(_owner, _scope, _table_name, primary);
        return itr;
    }

    public static remove(_owner:account_name,_scope:u64,_table_name:u64,primary: u64):void{
        let itr: i32 = db.db_find_i64(_owner, _scope, _table_name, primary);
        if(itr>=0){
            db.db_remove_i64(itr);
        }
    }

    public remove(primary:u64):void{
        DBHelper.remove(this._owner,this._scope,this._table_name,primary);
    }


}