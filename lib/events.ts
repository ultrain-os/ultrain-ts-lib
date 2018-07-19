
/**
 * @author fanliangqin@ultrain.io
 * @datetime 14:35:49, 07/09/2018
 * All rights reserved by ultrain.io @2018
 */
import { ultrain_assert, string2cstr, intToString } from "../src/utils";
import { Map } from "../src/map";
import { ISerializable } from "./ISerializable";
import { DataStream, DSHelper } from "../src/datastream";
const TYPE_STRING: u8 = 1;
const TYPE_U64: u8 = 4;

class _EventObject implements ISerializable {
    private _strmap: Map<string, string> = new Map<string, string>();
    private _intmap: Map<string, u64> = new Map<string, u64>();

    constructor() {}

    public set<T>(key: string, val: T): _EventObject {
        ultrain_assert(key != null && key.length > 0, "parameter 'key' can not be null or empty string.");

        if (isString(val)) {
            this._strmap.set(key, val);
        } else if (isInteger(val)) {
            this._intmap.set(key, <u64>val);
        } else {
            ultrain_assert(false, "only support string and integer value type.");
        }
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

    public serialize(ds: DataStream): void {
        let strKeys: string[] = this._strmap.keys();
        let strVals: string[] = this._strmap.values();
        for (let i: i32 = 0; i < strKeys.length; i++) {
            ultrain_assert((strKeys[i].length <= 127) && (strVals[i].length <= 127), "events string is longer than 127.");
            ds.writeString(strKeys[i]);
            ds.write<u8>(TYPE_STRING);
            ds.writeString(strVals[i]);
        }

        let intKeys: string[] = this._intmap.keys();
        let intVals: u64[] = this._intmap.values();
        for (let i: i32 = 0; i < intKeys.length; i++) {
            ultrain_assert(intKeys[i].length <= 127, "event key's length is longer than 127.");
            ds.writeString(intKeys[i]);
            ds.write<u8>(TYPE_U64);
            ds.write<u64>(intVals[i]);
        }
    }

    public deserialize(ds: DataStream): void {}
    public primaryKey(): u64 { return <u64>0; }
}

namespace env {
    export declare function emit_evnet(name: usize, name_size: u64, param: usize, param_size: u64): void;
}

export let EventObject: _EventObject = new _EventObject();

export function emit(evtname: string, obj: _EventObject): void {
    ultrain_assert(evtname != null && evtname.length > 0, "event name must be specified.");

    let len = DataStream.measure<_EventObject>(obj);
    let ds = DSHelper.getDataStreamWithLength(len);
    obj.serialize(ds);

    env.emit_evnet(string2cstr(evtname), evtname.length, ds.pointer(), ds.size());
}