import { ultrain_assert, string2cstr, intToString } from "../src/utils";
import { Map } from "../src/map";

/**
 * @author fanliangqin@ultrain.io
 * @datetime 14:35:49, 07/09/2018
 * All rights reserved by ultrain.io @2018
 */
/**
 *
 */
class _EventObject {
    private _strmap: Map<string, string> = new Map<string, string>();
    private _intmap: Map<string, u64> = new Map<string, u64>();

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
    // TODO : 拼接string的工作应该在core上完成，否则太耗时间
    public toString(): string {
        let ret = "{";

        let strKeys: string[] = this._strmap.keys();
        let strVals: string[] = this._strmap.values();
        for (let i: i32 = 0; i < strKeys.length; i++) {
            ret += "\"" + strKeys[i] + "\":" + "\"" + strVals[i] + "\",";
        }

        let intKeys: string[] = this._intmap.keys();
        let intVals: u64[] = this._intmap.values();
        for (let i: i32 = 0; i < intKeys.length; i++) {
            ret += "\"" + intKeys[i] + "\":" + intToString(intVals[i]) + ",";
        }

        ret += "}";

        // use Global mode, MUST call toString() method at last.
        this._strmap.clear();
        this._intmap.clear();

        return ret;
    }
}

namespace env {
    export declare function emit_evnet(name: usize, name_size: u64, param: usize, param_size: u64): void;
}

export let EventObject: _EventObject = new _EventObject();

export function emit(evtname: string, obj: _EventObject): void {
    ultrain_assert(evtname != null && evtname.length > 0, "event name must be specified.");
    let msg = obj.toString();
    env.emit_evnet(string2cstr(evtname), evtname.length, string2cstr(msg), msg.length);
}