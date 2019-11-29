import { intToString } from "./utils";

function jsonKey(k: string): string {
    return '"' + k + '":';
}

function jsonValue<T>(v: T): string {
    let vs = "";
    if (isInteger<T>()) { vs += intToString(v); }
    else if (isString<T>()) { vs += '"' + v + '"'; }
    else if (isBoolean<T>()) { vs += (v ? "true" : "false"); }
    else if (isArray<T>()) {
        vs += "["
        for (let i = 0; i < v.length; i++) {
            vs += jsonValue(v[i]);
            if (i != v.length -1) { vs += ","; }
        }
        vs += "]"; }
    else if (isReference<T>()) { vs += v.toString(); }
    else { vs += "notsupport"; }
    return vs;
}
/**
 * A helper class make json-styled string.
 *
 * @example
 *
 *   class R implements Returnable { .... }
 *
 *   let j = new JSON();
 *   j.item<u32>("u32", 9);
 *   j.item<string>("string", "hello world");
 *   j.item<u8[]>("u8_arr", [1, 2, 3]);
 *   j.item<R>("r", new R());
 *   j.item<R[]>("r_arr", new Array<R>());
 *
 *   let j_string = j.toString();
 */
export class JSON implements Returnable {
    private _jsonstr: string;
    private _firstItem: boolean;

    constructor() {
        this._jsonstr = "";
        this._firstItem = true;
        this.head();
    }

    private append_comma_if_need(): void {
        if (this._firstItem) {
            this._firstItem = false;
        } else {
            this._jsonstr += ",";
        }
    }

    private head(): JSON {
        this._jsonstr += "{";
        return this;
    }

    private tail(): JSON {
        this._jsonstr += "}";
        return this;
    }

    item<T>(key: string, v: T): JSON {
        this.append_comma_if_need();
        this._jsonstr += jsonKey(key) + jsonValue<T>(v) ;
        return this;
    }

    toString(): string {
        this.tail();
        return this._jsonstr;
    }
}
