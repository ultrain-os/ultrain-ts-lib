/**
 * @author fanliangqin@ultrain.io
 */
import { env as db } from "../internal/db.d";

/**
 * class Cursor is applied to iterate all records in a table.
 *
 * @export
 * @class Cursor
 * @template T it is a generic type of Serializable, which MUST define a default constructor without parameters.
 */
export class Cursor<T extends Serializable> {

    constructor(code: u64, table: u64, scope: u64) {
    }

    /**
     * to retrieve the count of records.
     *
     * @readonly
     * @type {u32}
     * @memberof Cursor
     */
    get count(): u32 {
        return 0;
    }

    /**
     * get current record the curosr points to.
     *
     * @returns {T}
     * @memberof Cursor
     */
    get(): T {
        var out = {} as T;
        return out;
    }

    /**
     * move cursor to the first record.
     *
     * @memberof Cursor
     */
    first(): void {
    }

    /**
     * move cursor to the last record.
     *
     * @memberof Cursor
     */
    last(): void {
    }

    /**
     * move cursor to the next record.
     * It should make the cursor out of the range of records,
     * so before you get() a record, check hasNext().
     *
     * @memberof Cursor
     */
    next(): void {
    }

    /**
     * move the cursor to the previous record,
     * but if the cursor reaches the first record, the cursor will not move forward any more.
     *
     * @memberof Cursor
     */
    previous(): void {
    }

    /**
     * to check if there is a record can read out.
     *
     * @returns {boolean}
     * @memberof Cursor
     */
    hasNext(): boolean {
        return false;
    }
}
/**
 * class DBManager is used to manager reading or writing to system db.
 * the type T must be implements interface Serializable,
 * reference {@link Account} or {@link CurrencyStats}
 *
 * @class DBManager
 *
 * @example
 * import { DBManager } from "ultrain-ts-lib/src/dbmanager";
 */

export class DBManager<T extends Serializable> {
    public _tblname: u64;
    public _owner: u64;
    public _scope: u64;
    /**
     * create a table to persistent data.
     * @param tblname the table name
     * @param owner the owner of the table, must be same with contract account.
     * @param scope the scope of rows,
     *        if you write a row with scope A, then you must read the row with scope A too,
     *        otherwise you get nothing.
     */
    constructor(tblname: u64, owner: u64, scope: u64) {
        this._tblname = tblname;
        this._owner = owner;
        this._scope = scope;
    }

    public getCode(): u64 { return this._owner; }
    public getScope(): u64 { return this._scope; }

    /**
     * get the cursor from this table of scope, so you can iterate all records.
     *
     * WARNING: this is a very very costly operation, and we do not recommended to do this,
     * only you know what will happen.
     * if you invoke this function, all of the records in the table will be loaded, no matter
     * how many they are!
     * it will take a long time and occupate vast memory, your transaction should failed once
     * there are too many records.
     *
     * @returns {Cursor<T>}
     * @memberof DBManager
     */
    public cursor(): Cursor<T> {
        return new Cursor<T>(this._owner, this._tblname, this._scope);
    }
    /**
     * insert a new record to database.
     * @param payer an account_name, who pays for the storing action. only payer can modify this object.
     * @param obj the data to be sotred.
     */
    public emplace(payer: u64, obj: T): void {
    }
    /**
     * update a row.
     * @param newobj the updated data to be stored.
     * @param payer account name who pays for the updating action.
     */
    public modify(payer: u64, newobj: T): void {
    }

    public exists(primary: u64): boolean {
        return false;
    }
    /**
     * read a record form database.
     * @param primary the primary key of data
     * @param out the data struct if success.
     * @returns true if the primary key exists, otherwise false.
     */
    public get(primary: u64, out: T): boolean {
        return true;
    }
    /**
     * remove a record from database.
     * @param primary primary key to be removed.
     */
    public erase(primary: u64): void {
    }
}