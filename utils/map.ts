/**
 * @author fanliangqin@ultrain.io
 */

export class Map<K, V> {
    private _keys: K[] = []
    private _values: V[] = [];

    constructor() {}

    set(key: K, val: V): void {
        let idx: i32 = this.find(key);
        if ( idx == -1) {
            this._keys.push(key);
            this._values.push(val);
        } else {
            this._values[idx] = val;
        }
    }

    get(key: K): V | null {
        let idx: i32 = this.find(key);
        if (idx == -1)  return null;

        return this._values[idx];
    }

    remove(key: K): V | null {
        let idx: i32 = this.find(key);
        if (idx == -1) return null;

        this._keys.splice(idx, 1);
        let ret: V[] = this._values.splice(idx, 1);
        return ret[0];
    }

    size(): i32 {
        return this._keys.length;
    }

    keys(): K[] {
        return this._keys;
    }

    values(): V[] {
        return this._values;
    }

    clear(): void {
        this._keys = [];
        this._values = [];
    }

    contains(key: K): boolean {
        return this.find(key) != -1;
    }

    private find(key: K): i32 {
        for (let i: i32 = 0; i < this._keys.length; ++i) {
            if (this._keys[i] == key) {
                return i;
            }
        }
        return -1;
    }
}