
/**
 * @author fanliangqin@ultrain.io
 * @datetime 14:35:49, 07/09/2018
 * All rights reserved by ultrain.io @2018
 */
import { ultrain_assert, string2cstr } from "../src/utils";
import { Map } from "../lib/map";
import { env as system } from "../internal/system.d";

const TYPE_STRING: u8 = 0x1;
const TYPE_BOOL: u8 = 0x2;
const TYPE_U64: u8 = 0x4;
const TYPE_STRING_ARRAY: u8 = 0x8;
const TYPE_BOOL_ARRAY: u8 = 0x10;
const TYPE_U64_ARRAY: u8 = 0x11;

class _EventObject implements Serializable {
    private _strmap: Map<string, string> = new Map<string, string>();
    private _intmap: Map<string, u64> = new Map<string, u64>();
    private _boolmap: Map<string, u8> = new Map<string, u8>();

    private _str_arr_map: Map<string, string[]> = new Map<string, string[]>();
    private _int_arr_map: Map<string, u64[]> = new Map<string, u64[]>();
    private _bool_arr_map: Map<string, u8[]> = new Map<string, u8[]>();

    constructor() {}

    public setInt(key: string, val: u64): _EventObject {
        this._intmap.set(key, val);
        return this;
    }

    public setString(key: string, val: string): _EventObject {
        this._strmap.set(key, val);
        return this;
    }

    public setBoolean(key: string, val: boolean): _EventObject {
        this._boolmap.set(key, <u8>(val ? 1 : 0));
        return this;
    }

    public setIntArray(key: string, val: u64[]): _EventObject {
        this._int_arr_map.set(key, val);
        return this;
    }

    public setStringArray(key: string, val: string[]): _EventObject {
        this._str_arr_map.set(key, val);
        return this;
    }

    public setBooleanArray(key: string, val: boolean[]): _EventObject {
        let bool2u8: u8[] = [];
        for (let i: i32 = 0; i < val.length; i++) {
            bool2u8.push(val[i] ? 1 : 0);
        }

        this._bool_arr_map.set(key, val);

        return this;
    }

    // public toString(): string {
    //     let ret = "{";

    //     let strKeys: string[] = this._strmap.keys();
    //     let strVals: string[] = this._strmap.values();
    //     for (let i: i32 = 0; i < strKeys.length; i++) {
    //         ret += "\"" + strKeys[i] + "\":" + "\"" + strVals[i] + "\",";
    //     }

    //     let intKeys: string[] = this._intmap.keys();
    //     let intVals: u64[] = this._intmap.values();
    //     for (let i: i32 = 0; i < intKeys.length; i++) {
    //         ret += "\"" + intKeys[i] + "\":" + intToString(intVals[i]) + ",";
    //     }

    //     ret += "}";

    //     // use Global mode, MUST call toString() method at last.
    //     this._strmap.clear();
    //     this._intmap.clear();

    //     return ret;
    // }

    private serializeStringMap(ds: DataStream, mp: Map<string, string>): void {
        let keys: string[] = mp.keys();
        let values = mp.values();
        for (let i: i32 = 0; i < keys.length; i++) {
            ultrain_assert(keys[i].length <= 127, "events string is longer than 127.");
            ds.writeString(keys[i]);
            ds.write<u8>(TYPE_STRING);
            ds.writeString(values[i]);
        }
    }

    private serializeStringArrayMap(ds: DataStream, mp: Map<string, string[]>): void {
        let keys: string[] = mp.keys();
        let values = mp.values();
        for (let i: i32 = 0; i < keys.length; i++) {
            ultrain_assert(keys[i].length <= 127, "events string is longer than 127.");
            ds.writeString(keys[i]);
            ds.write<u8>(TYPE_STRING_ARRAY);
            ds.writeStringVector(values[i]);
        }
    }

    private serializeMap<T>(ds: DataStream, mp: Map<string, T>, type: u8): void {
        let keys: string[] = mp.keys();
        let values = mp.values();
        for (let i: i32 = 0; i < keys.length; i++) {
            ultrain_assert(keys[i].length <= 127, "events string is longer than 127.");
            ds.writeString(keys[i]);
            ds.write<u8>(type);
            ds.write<T>(values[i]);
        }
    }

    private serializeArrayMap<T>(ds: DataStream, mp: Map<string, T[]>, type: u8): void {
        let keys: string[] = mp.keys();
        let values = mp.values();
        for (let i: i32 = 0; i < keys.length; i++) {
            ultrain_assert(keys[i].length <= 127, "events string is longer than 127.");
            ds.writeString(keys[i]);
            ds.write<u8>(type);
            ds.writeVector<T>(values[i]);
        }
    }

    public serialize(ds: DataStream): void {
        this.serializeStringMap(ds, this._strmap);
        this.serializeMap<u64>(ds, this._intmap, TYPE_U64);
        this.serializeMap<u8>(ds, this._boolmap, TYPE_BOOL);

        this.serializeStringArrayMap(ds, this._str_arr_map);
        this.serializeArrayMap<u64>(ds, this._int_arr_map, TYPE_U64_ARRAY);
        this.serializeArrayMap<u8>(ds, this._bool_arr_map, TYPE_BOOL_ARRAY);

        this._strmap.clear();
        this._intmap.clear();
        this._boolmap.clear();
        this._str_arr_map.clear();
        this._int_arr_map.clear();
        this._bool_arr_map.clear();
    }

    public deserialize(ds: DataStream): void {}
    public primaryKey(): u64 { return <u64>0; }
}

// declare namespace env {
//    declare function emit_event(name: usize, name_size: u64, param: usize, param_size: u64): void;
// }

export let EventObject: _EventObject = new _EventObject();

/**
 * to emit an event.
 * @param evtname the name of event to be emitted, its length MUST be less than 64 characters.
 * @param obj EventObject contains message. The contents's serialized length must be less than your configed <i>contract_event_string_length</i>,
 *   the default serialized contents length is 128.
 * @returns i32 value. 0: successed;  -1: event name is too long; -2: event message is too long.
 */
export function emit(evtname: string, obj: _EventObject): i32 {
    ultrain_assert(evtname.length <= 64, "length of event name must be less than 64.");

    let len = DataStream.measure<_EventObject>(obj);
    let ds = DSHelper.getDataStreamWithLength(len);
    obj.serialize(ds);

    let ret = system.emit_event(string2cstr(evtname), evtname.length, ds.pointer(), ds.size());
    return ret;
}