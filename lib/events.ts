import { ultrain_assert, string2cstr } from "../src/utils";
import { Map } from "../src/map";

/**
 * @author fanliangqin@ultrain.io
 * @datetime 14:35:49, 07/09/2018
 * All rights reserved by ultrain.io @2018
 */
/**
 *
 */
class EventObject {
    private _strmap: Map<string, string> = new Map<string, string>();
    private _intmap: Map<string, u64> = new Map<string, u64>();

    public set<T>(key: string, val: T): void {
        ultrain_assert(key != null && key.length > 0, "parameter 'key' can not be null or empty string.");

        if (isString(val)) {
            this._strmap.set(key, val);
        } else if (isInteger(val)) {
            this._intmap.set(key, val);
        } else {
            ultrain_assert(false, "only support string and integer value type.");
        }
    }

    public toString(): string {
        let ret = "{";

        for (let i: u32 = 0; i < <u32>this._strmap.size(); i++) {

        }

        return ret;
    }
}

namespace env {
    export declare function emit_evnet(name: usize, name_size: u64, param: usize, param_size: u64): void;
}

export function emit(evtname: string, params: string): void {
    ultrain_assert(evtname != null && evtname.length > 0, "event name must be specified.");
    env.emit_evnet(string2cstr(evtname), evtname.length, string2cstr(params), params.length);
}