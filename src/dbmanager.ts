/**
 * @author fanliangqin@ultrain.io
 */

import { Log } from "./log";
import { DataStream } from "./datastream";
import { ultrain_assert } from "./utils";
import { env as action } from "../internal/action.d";
import { env as db } from "../internal/db.d";

export class DataItem<T> {
    public _dbmgr: DBManager<T>;
    public _primary_itr: i32;
    public _iters: i32[];
    public _value: T;

    constructor(dbmgr: DBManager<T>) {
        this._dbmgr = dbmgr;
    }
}
/**
 * class DBManager is used to manager reading or writing to system db.
 * the type T must be implements some methods link @{Token.Account} or @{Token.CurrencyStats}
 */
export class DBManager<T> {
    public _tblname: u64;
    public _code: u64;
    public _scope: u64;
    public _items_vector: DataItem<T>[];

    constructor(tblname: u64, code: u64, scope: u64) {
        this._tblname = tblname;
        this._code = code;
        this._scope = scope;
        this._items_vector = [];
    }

    public getCode(): u64 { return this._code; }
    public getScope(): u64 { return this._scope; }

    public emplace(payer: u64, obj: T): void {
        ultrain_assert(this._code == action.current_receiver(), "can not create objects in table of another contract");
        let item: DataItem<T> = new DataItem<T>(this);
        item._value = obj;

        let len = DataStream.measure<T>(obj);
        let arr = new Uint8Array(len);
        let ds = new DataStream(<usize>arr.buffer, len);
        obj.serialize(ds);

        let primary = obj.primaryKey();
        // Log.s("dbmanager.emplace scope = ").i(this._scope, 16).s(" table = ").i(this._tblname, 16).s(" payer = ").i(payer, 16).s(" id = ").i(primary, 16).s(" buffer_size = ").i(ds.pos, 16).flush();
        item._primary_itr = db.db_store_i64(this._scope, this._tblname, payer, primary, ds.buffer, ds.pos);
        this._items_vector.push(item);
        // TODO(fanliangqin): update secondary iterators and update next_primaryKey.
    }

    public modify(newobj: T, payer: u64): void {
        let item: DataItem<T>;
        let len: i32 = this._items_vector.length;
        let idx: i32 = 0;

        for (; idx < len; ++idx) {
            if (newobj.primaryKey() == this._items_vector[idx]._value.primaryKey()) {
                item = this._items_vector[idx];
                // break;
            }
        }

        ultrain_assert(idx < len && item._dbmgr == this, "object passed to modify is not in this DBManager.");
        ultrain_assert(this._code == action.current_receiver(), "can not modify objects in table of another contract.");
        // TODO(fanliangqin): update secondary iterators
        // waiting code here

        let pk: u64 = item._value.primaryKey();
        item._value = newobj;
        ultrain_assert(pk == item._value.primaryKey(), "updater cannot change primary key when modifying an object.");


        len = DataStream.measure<T>(newobj);

        let arr = new Uint8Array(len);
        let ds = new DataStream(<usize>arr.buffer, len);
        newobj.serialize(ds);

        db.db_update_i64(item._primary_itr, payer, ds.buffer, ds.pos);

        // TODO(fanliangqin): update secondary items here
        // codes wait here
    }

    private loadObjectByPrimaryIterator(itr: i32, out: T): void {
        // remove find _items_vector logic, it seems not required.
        let len: i32 = db.db_get_i64(itr, 0, 0);

        let arr = new Uint8Array(len);
        let ds = new DataStream(<usize>arr.buffer, len);
        db.db_get_i64(itr, <usize>arr.buffer, len);

        out.deserialize(ds);

        // TODO(fanliangqin): update secondary items here
        // codes wait here.
        // return val;
    }

    public get(primary: u64, out: T): boolean {
        let len: i32 = this._items_vector.length;
        for (let i: i32 = 0; i < len; ++i) {
            if (this._items_vector[i]._value.primaryKey() == primary) {
                out = this._items_vector[i]._value;
                return true;
            }
        }

        Log.s("dbmanager.get code = ").i(this._code, 16).s(" scope = ").i(this._scope, 16).s(" table = ").i(this._tblname, 16).s(" id = ").i(primary, 16).flush();
        let itr: i32 = db.db_find_i64(this._code, this._scope, this._tblname, primary);
        if (itr < 0) return false;

        this.loadObjectByPrimaryIterator(itr, out);

        let item: DataItem<T> = new DataItem<T>(this);
        item._primary_itr = itr;
        item._value = out;

        this._items_vector.push(item);
        return true;
    }

    public erase(obj: T): void {
        let len: i32 = this._items_vector.length;
        let i: i32 = 0;
        for (; i < len; ++i) {
            if (this._items_vector[i]._value.primaryKey() == obj.primaryKey()) {
                break;
            }
        }
        ultrain_assert(i < len, "attempt to remove object that was not in DBManager.");

        let item: DataItem<T> = this._items_vector[i];
        ultrain_assert(item._dbmgr == this, "object passed to erase is not in DBManager.");
        ultrain_assert(this._code == action.current_receiver(), "can not erase objects in table of another contract.");

        this._items_vector.splice(i, 1);
        db.db_remove_i64(item._primary_itr);

        // TODO(fanliangqin): remove secondary iterators
        // codes wait here
    }
}