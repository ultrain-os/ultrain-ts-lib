
/**
 * @author fanliangqin@ultrain.io
 * @datetime 16:53:10, 07/11/2018
 * All rights reserved by ultrain.io @2018
 */
export class Map<K, V> implements Serializable {
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

    contains(key: K): boolean {
        return this.find(key) != -1;
    }

    @operator("[]")
    private _valueAt(key: K): V {
        let i = this.find(key);
        if (i != -1) {
            return this._values[i];
        } else {
            // FIXME(liangqin): []操作符只能保证读到数据，不能自动将不存在的key加入到map中，
            // 1. 不是所有的V都有默认的构造函数。
            // 2. 基本的数据类型，如u32/u64/boolean，只能传值，不能传引用，没办法支持 map[key] += val 这种语法，而这种语法基本是默认要支持的。
            // 所以如果不能实现基本数据类型传引用，那还不如不支持这种语。所以直接 return null；

            // this._keys.push(key);
            // this._values.push(new V());
            // return this._values[-1];

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

    private store<T> (val: T, ds: DataStream): void {
        if (isInteger<T>(val)) {
            ds.write<T>(val);
        } else if (isString<T>(val)) {
            ds.writeString(val);
        } else if (isReference<T>(val)) {
            val.serialize(ds);
        } else {
            ultrain_assert(false, "unsupport value type for serializable map.");
        }
    }

    serialize(ds: DataStream): void {
        let len = this._keys.length;
        ds.write<u32>(<u32>len);

        for (let i: i32 = 0; i < len; i++) {
            this.store<K>(this._keys[i], ds);
            this.store<V>(this._values[i], ds);
        }
    }

    private readKey<T>(ds: DataStream): void {
        let arr = new Array<T>(1);
        let v0 = arr[0];
        if (isInteger(v0)) {
            let rst = ds.read<T>();
            this._keys.push(rst);
        } else if (isString(v0)) {
            let rst = ds.readString();
            this._keys.push(rst);
        } else if (isReference(v0)) {
            let rst = {} as T;
            rst.deserialize(ds);
            this._keys.push(rst);
        } else {
            ultrain_assert(false, "key type is not support.");
        }
    }

    private readValue<T>(ds: DataStream): void {
        let arr = new Array<T>(1);
        let v0 = arr[0];
        if (isInteger(v0)) {
            let rst = ds.read<T>();
            this._values.push(rst);
        } else if (isString(v0)) {
            let rst = ds.readString();
            this._values.push(rst);
        } else if (isReference(v0)) {
            let rst = {} as T;
            rst.deserialize(ds);
            this._values.push(rst);
        }
    }

    
    deserialize(ds: DataStream): void {
        let len = ds.read<u32>();

        for (let i: u32 = 0; i < len; i++) {
            this.readKey<K>(ds);
            this.readValue<V>(ds);
        }
    }

    primaryKey(): u64 { return <u64>0; }
}