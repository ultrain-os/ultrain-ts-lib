
/**
 * @author fanliangqin@ultrain.io
 * @datetime 16:53:10, 07/11/2018
 * All rights reserved by ultrain.io @2018
 */
import { Log } from "../src/log";
import { ultrain_assert } from "../src/utils";
// import { DataStream } from "./datastream";

enum ProtoType {
    NULL = 0,
    I8 = 1, U8 = 2, I16 = 3, U16 = 4, I32 = 5, U32 = 6, I64 = 7, U64 = 8, STRING = 9,
    I8_ARR = 10, U8_ARR = 11, I16_ARR = 12, U16_ARR = 13, I32_ARR = 14, U32_ARR = 15,
    I64_ARR = 16, U64_ARR = 17, STRING_ARR = 18, OBJECT = 19
}

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

    // private storeArray<T>(val: T, ds: DataStream): void {
    //     let len = val.length;
    //     if (len > 0) {
    //         let v0 = val[0];
    //         if (isInteger(v0)) {
    //             ds.writeArray<T>(val);
    //         } else if (isString(v0)) {
    //             ds.writeStringVector(val);
    //         } else if (isReference(v0)) {
    //             ds.writeComplexArray<T>(val);
    //         } else {
    //             ultrain_assert(false, "Map<K, V> only supports integer, string, Object extends Serializable and array of each types.");
    //         }
    //     } else {
    //         ds.writeVarint32(0);
    //     }
    // }

    serialize(ds: DataStream): void {
        let len = this._keys.length;
        ds.writeVarint32(len);

        for (let i: i32 = 0; i < len; i++) {
            this.store<K>(this._keys[i], ds);
            if (isArray(this._values[i]) && !isString(this._values[i])) {
                // this.storeArray<V>((this._values[i]), ds);
                ds.writeArray<V>(this._values[i]);
            } else {
                this.store<V>(this._values[i], ds);
            }
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

    private readValueArray<T>(ds: DataStream): T {
        let len = ds.readVarint32();
        let r = {} as T;
        if (len == 0) {
            return r;
        }

        r.length = len;
        let v0 = r[0];
        // if (v0 instanceof i8) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.read<i8>();
        //     }
        // } else if (v0 instanceof u8) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.read<u8>();
        //     }
        // }  else if (v0 instanceof i16) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.read<i16>();
        //     }
        // }  else if (v0 instanceof u16) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.read<u16>();
        //     }
        // } else if (v0 instanceof i32) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.read<i32>();
        //     }
        // } else if (v0 instanceof u32) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.read<u32>();
        //     }
        // } else if (v0 instanceof i64) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.read<i64>();
        //     }
        // } else if (v0 instanceof u64) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.read<u64>();
        //     }
        // } else if (isString(v0)) {
        //     for (let i: u32 = 0; i < len; i++) {
        //         r[i] = ds.readString();
        //     }
        // } else if (isReference(v0)) {
        if (isReference(v0)) {
            // var m: T = [];
            for (let i: u32 = 0; i < len; i++) {
                r[i].deserialize(ds);
                Log.s("map in loop x = ").i(r[i].x).flush();
                // m.push(r[i]);
                // Log.s("map in loop mx = ").i(m[i].x).flush();
            }

            for (let i: i32 = 0; i < r.length; i++) {
                Log.s("map  x = ").i(r[i].x).flush();
            }
            // for (let i: i32 = 0; i < m.length; i++) {
            //     Log.s("map  mx = ").i(m[i].x).flush();
            // }
        } else {
            // ultrain_assert(false, "DataStream.readArray() method only supports primitive types for u8, i8, u16, i16, u32, i32, u64, i64");
        }
        return r;
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
        } else if (isArray(v0)) {
            let rst: T = this.readValueArray<T>(ds);
            Log.s("readValue x = ").i(rst[1].x).flush();
            this._values.push(rst);
        } else if (isReference(v0)) {
            let rst = {} as T;
            rst.deserialize(ds);
            this._values.push(rst);
        }
    }

    deserialize(ds: DataStream): void {
        let len = ds.readVarint32();

        for (let i: u32 = 0; i < len; i++) {
            this.readKey<K>(ds);
            this.readValue<V>(ds);
        }

    }

    primaryKey(): u64 { return <u64>0; }
}