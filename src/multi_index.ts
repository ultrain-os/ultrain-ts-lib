/**
 * @author fanliangqin@ultrain.io
 */

import "../lib/alias";
import { ultrain_assert } from "../lib/system";
import { db_find_i64 } from "../lib/db";
import { Map } from "../utils/map";

export type ItemConstructor = <T>(obj: T) => void;
export type ObjectTUpdater = <T>(obj: T) => void;

export class MultiIndex<T> {
    private _tblname: u64;
    private _code: u64;
    private _scope: u64;
    private _next_primary_key: u64;
    private _items_vector: ItemPtr<T>[];
    private _items: Map<u64, T>;

    static max_stack_buffer_size: u64 = 512;

    static no_available_primary_key: u64 = <u64>(-2);
    static unset_next_primary_key: u64 = <u64>(-1);

    static validate_table_name(name: u64): boolean {
        return (name & 0x00000000000000F) == 0;
    }

    private load_object_by_primary_iterator(itr: i32): T {
        return null;
    }

    constructor(tblname: u64, code: u64, scope: u64) {
        this._tblname = tblname;
        this._code = code;
        this._scope = scope;
        this._next_primary_key = MultiIndex.unset_next_primary_key;
    }

    public getCode(): u64 { return this._code; }
    public getScope(): u64 { return this._scope; }

    public begin(): ConstIterator<T> {
        return null;
    }

    public end(): ConstIterator<T> {
        return null;
    }

    public lowerBound(primary: u64): ConstIterator<T> {
        return null;
    }

    public upperBound(primary: u64): ConstIterator<T> {
        return null;
    }

    public availablePrimaryKey(): u64 {

        ultrain_assert(this._next_primary_key < MultiIndex.no_available_primary_key, " next primary key in table is at autoincrement limit.");
        return this._next_primary_key;
    }

    // CAUTION: should recheck return value T
    public getIndex(indexName: u64): T {
        return null;
    }

    public iteratorTo(obj: T): ConstIterator<T> {
        return null;
    }

    public emplace(payer: u64, constr: ItemConstructor): ConstIterator<T> {
        return null;
    }

    public modify(obj: T, payer: u64, updater: ObjectTUpdater): void {

    }

    public get(primary: u64): T {
        let rst: T = this.find(primary);
        if (rst != null) return rst;

        let itr: i32 = db_find_i64(this._code, this._scope, this._tblname, primary);
        ultrain_assert(itr >= 0, "unable to find primary key.");

        rst = this.load_object_by_primary_iterator(itr);
        this._items.set(primary, rst);
        return rst;
    }

    public find(primary: u64): T | null {
        return this._items.get(primary);
    }

    public erase(obj: T): void {

    }

}

// TODO(liangqin.fan) Item需要继承T或能访问T的数据
class Item<T> {
    __idx: MultiIndex<T>;
    __primary_itr: i32;
    __iters: i32[];

    constructor(idx: MultiIndex<T>, cnstor: ItemConstructor) {
        this.__idx = idx;
        cnstor(this);
    }
}

class ItemPtr<T> {
    _item: Item<T>;

}

class Index<T> {

}

class ConstIterator<T> {

}