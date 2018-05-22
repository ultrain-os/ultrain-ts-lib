/**
 * @author fanliangqin@ultrain.io
 */
import "allocator/arena";
import "../lib/db.d";
import { ultrain_assert } from "../lib/system";
import { currentReceiver, currentSender } from "../lib/action";
import { ISerializer } from "../utils/serializer";
import { packSize, pack, unpack } from "../utils/datastream";
import { db_store_i64, db_update_i64, db_find_i64, db_remove_i64, db_get_i64 } from "../lib/db.d";

type DItemConstructor<T extends ISerializer> = (item: DItem<T>) => void;
export type TObjOperator<T extends ISerializer> = (t: T) => void;

export class DItem<T extends ISerializer> {
    public _dbmgr: DBManager<T>;
    public _primary_itr: i32;
    public _iters: i32[];
    public _value: T;

    constructor(dbmgr: DBManager<T>) {
        this._dbmgr = dbmgr;
    }

}

export class DBManager<T extends ISerializer> {
    private _tblname: u64;
    private _code: u64;
    private _scope: u64;
    private _items_vector: DItem<T>[];

    constructor(tblname: u64, code: u64, scope: u64) {
        this._tblname = tblname;
        this._code = code;
        this._scope = scope;
    }

    private retrieveDItem(obj: T): DItem<T> | null {
        let len: i32 = this._items_vector.length;
        for (let i: i32 = 0; i < len; ++i) {
            if (obj.primary_key() == this._items_vector[i]._value.primary_key()) {
                return this._items_vector[i];
            }
        }
        return null;
    }

    public getCode(): u64 { return this._code; }
    public getScope(): u64 { return this._scope; }

    public emplace(payer: u64, tcnstor: TObjOperator<T>): void {
        ultrain_assert(this._code == currentReceiver(), "can not create objects in table of another contract");
        let item: DItem<T> = new DItem<T>(this);
        tcnstor(item._value);

        let bytes: u8[] = pack(item._value);
        let size: i32 = bytes.length;

        let buffer: usize = allocate_memory(sizeof<u8>() * size);
        let ptr: usize = buffer;
        for (let i: i32 = 0; i < size; ++i) {
            store<u8>(ptr, bytes[i]);
            ++ptr;
        }
        let pk: u64 = item._value.primary_key();
        item._primary_itr = db_store_i64(this._scope, this._tblname, payer, pk, buffer, size);
        free_memory(buffer);

        this._items_vector.push(item);
        // TODO(fanliangqin): update secondary iterators and update next_primary_key.
    }

    public modify(tobj: T, payer: u64, updater: TObjOperator<T>): void {
        let item: DItem<T> = this.retrieveDItem(tobj);
        ultrain_assert( item != null || item._dbmgr == this, "object passed to modify is not in this DBManager.");
        ultrain_assert(this._code == currentReceiver(), "can not modify objects in table of another contract.");
        // TODO(fanliangqin): update secondary iterators
        // waiting code here

        let pk: u64 = item._value.primary_key();
        updater(item._value);
        ultrain_assert(pk == item._value.primary_key(), "updater cannot change primary key when modifying an object.");

        let bytes: u8[] = pack(item._value);
        let size: i32 = bytes.length;

        let buffer: usize = allocate_memory(sizeof<u8>() * size);
        let ptr: usize = buffer;
        for (let i: i32 = 0; i < size; ++i) {
            store<u8>(ptr, bytes[i]);
            ++ptr;
        }
        db_update_i64(item._primary_itr, payer, buffer, size);
        free_memory(buffer);

        // TODO(fanliangqin): update secondary items here
        // codes wait here
    }

    private load_object_by_primary_iterator(itr: i32): DItem<T> {
        // remove find _items_vector logic, it seems not required.
        let size: i32 = db_get_i64(itr, 0, 0);
        ultrain_assert( size >= 0, "DBManager error reading iterator.");

        let buffer: usize = allocate_memory(sizeof<u8>() * size);
        db_get_i64(itr, buffer, size);
        let bytes: u8[] = [];
        let ptr: usize = buffer;
        for(let i: i32 =0; i < size; ++i) {
            bytes.push(load<u8>(ptr));
            ++ptr;
        }
        free_memory(buffer);

        let item:DItem<T> = new DItem<T>(this);
        item._primary_itr = itr;
        let val: T = unpack<T>(bytes);
        item._value = val;

        // TODO(fanliangqin): update secondary items here
        // codes wait here.

        return item;
    }

    public find(primary: u64): T | null {
        let len: i32 = this._items_vector.length;
        for (let i: i32 = 0; i < len; ++i) {
            if (this._items_vector[i]._value.primary_key() == primary) {
                return this._items_vector[i]._value;
            }
        }

        let itr: i32 = db_find_i64(this._code, this._scope, this._tblname, primary);
        if (itr < 0) return null;

        let result: DItem<T> = this.load_object_by_primary_iterator(itr);
        return result._value;
    }

    public get(primary: u64): T {
        let result: DItem<T> = this.find(primary);
        ultrain_assert( result != null, "DBManager unable to find key.");
        return result._value;
    }

    public erase(obj: T): void {
        let len: i32 = this._items_vector.length;
        let i: i32 = 0;
        for (; i < len; ++i) {
            if (this._items_vector[i]._value.primary_key() == obj.primary_key()) {
                break;
            }
        }
        ultrain_assert( i < len, "attempt to remove object that was not in DBManager.");

        let item: DItem<T> = this._items_vector[i];
        ultrain_assert(item._dbmgr == this, "object passed to erase is not in DBManager.");
        ultrain_assert(this._code == currentReceiver(), "can not erase objects in table of another contract.");

        this._items_vector.splice(i, 1);
        db_remove_i64(item._primary_itr);

        // TODO(fanliangqin): remove secondary iterators
        // codes wait here
    }
}