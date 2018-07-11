/**
 * @author fanliangqin@ultrain.io
 */

export class Map<K, V> {
    private _keys: K[] = [];
    private _values: V[] =[];

    // constructor() {}

    set(key: K, val: V): void {
        let idx: i32 = this.find(key);
        if ( idx == -1) {
            this._keys.push(key);
            this._values.push(val);
        } else {
            this._values[idx] = val;
        }
    }

    get(key: K): V {
        let idx: i32 = this.find(key);
        if (idx == -1)  return null;

        return this._values[idx];
    }

    remove(key: K): boolean {
        let idx: i32 = this.find(key);
        if (idx == -1) return false;

        this._keys.splice(idx, 1);
        this._values.splice(idx, 1);
        return true;
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
    // FIXME: 为什么直接返回boolean就是不可以？？？？？
    contains(key: K): u32 {
        // return this.find(key) != -1;
        return this.find(key);
    }

    // FIXME the operator [] can only read from the map,
    // but can not write to the map, because:
    // 1. in typescript, basic variable types as int/string/double is passed by value,
    // and can not passed by reference.
    // 2. for some value type V, there is no default constructor
    @operator("[]")
    private _valueAt(key: K): V {
        let i = this.find(key);
        if (i != -1) {
            return this._values[i];
        } else {
            this._keys.push(key);
            // TODO(liangqin): should handle new V() if V does not have a default constructor.
            this._values.push(null);
            return null;
        }
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