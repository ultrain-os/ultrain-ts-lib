/**
 * @author fanliangqin@ultrain.io
 */
import "allocator/arena";
import { Log } from "./log";

declare function ts_action_init(): i32;
declare function ts_action_params_count(): i64;
declare function ts_action_params_nth_type(nth: i32): i64;
declare function ts_action_params_nth_as_int(nth: i32): i64;
declare function ts_action_params_nth_string_length(nth: i32): i64;
declare function ts_action_params_nth_string_read_char(nth: i32, idx: i32): i32;
declare function ts_action_name_length(): i64;
declare function ts_action_name_read_char(idx: i32): i32;

const ASCIICHAR: string[/*95*/] = [
    " ", "!", "\"", "#", "$", "%", "&", "'",
    "(", ")", "*", "+", ",", "-", ".", "/",
    "0", "1", "2", "3", "4", "5", "6", "7",
    "8", "9", ":", ";", "<", "=", ">", "?",
    "@", "A", "B", "C", "D", "E", "F", "G",
    "H", "I", "J", "K", "L", "M", "N", "O",
    "P", "Q", "R", "R", "T", "U", "V", "W",
    "X", "Y", "Z", "[", "\\", "]", "^", "_",
    "`", "a", "b", "c", "d", "e", "f", "g",
    "h", "i", "j", "k", "l", "m", "n", "o",
    "p", "q", "r", "s", "t", "u", "v", "w",
    "x", "y", "z", "{", "|", "}", "~"];

enum PTYPE {
    NULL = 0,     /* null_type  */
    I64 = 1,       /* int64_type */
    U64 = 2,        /* uint64_t   */
    DBL = 3,        /* double_type*/
    BOOL = 4,     /* bool_type  */
    STR = 5,        /* string_type*/
    ARR = 6,       /* array_type */
    OBJ = 7,        /* object_type*/
    BLOB = 8      /* blob_type  */
};

// function readActionName(): string {
//     let len: i32 = <i32>ts_action_name_length();
//     let name: string = "";
//     for (let i = 0; i < len; ++i) {
//         let val: i32 = ts_action_name_read_char(i);
//         if (val == -1) continue;
//         let chrcode: u8 = <u8>(val & 0xff);
//         let chridx: u8 = chrcode - 0x20;
//         name = name + ASCIICHAR[chridx];
//     }
//     return name;
// }

export class Action {
    private action_code: i64;
    private action_name: string;

    public s_params: string[] = [];
    public i_params: i64[] = [];

    public valid: boolean = false;

    constructor(code: i64) {
        this.action_code = code;
    }

    get name(): string {
        return this.action_name;
    }

    init(): boolean {
        let status: i32 = ts_action_init();
        if (status !== 0) {
            Log.s("ts_action_init failed.").flush();
            this.valid = false;
        } else {
            this.valid = this.parseName() && this.parseParams();
        }
        return this.valid;
    }

    private parseName(): boolean {
        let len: i32 = <i32>ts_action_name_length();
        let name: string = "";
        for (let i = 0; i < len; ++i) {
            let val: i32 = ts_action_name_read_char(i);
            if (val == -1) continue;
            let chrcode: u8 = <u8>(val & 0xff);
            let chridx: u8 = chrcode - 0x20;
            name = name + ASCIICHAR[chridx];
        }
        this.action_name = name;
        // let chars: u16[];
        // for (let i = 0; i < len; ++i) {
        //     let val: i32 = ts_action_name_read_char(i);
        //     if (val == -1) continue;
        //     let chrcode: u16 = <u16>(val & 0x00ff);
        //     chars.push(chrcode);
        // }
        // this.action_name = String.fromCharCodes(chars);
        return this.action_name.length !== 0;
    }

    private parseParams(): boolean {
        let status: i32 = ts_action_init();
        if (status !== 0) return false;

        let size: i64 = ts_action_params_count();
        Log.s("params count: ").i(size).flush();

        for (let i = 0; i < size; ++i) {
            let type = ts_action_params_nth_type(i);
            switch (<i32>type) {
                case PTYPE.I64:
                case PTYPE.U64: {
                    let val: i64 = ts_action_params_nth_as_int(i);
                    this.i_params.push(val);
                } break;
                case PTYPE.STR: {
                    let val: string = this.read_params_nth_string(i);
                    this.s_params.push(val);
                } break;
                default: {
                    Log.s(" :: It is not support for parameters type ").i(type).flush();
                } break;
            }
        }
        return true;
    }

    private read_params_nth_string(nth: i32): string {
        let nthlen = ts_action_params_nth_string_length(nth);
        Log.s(":: params length is ").i(nthlen).flush();

        let value: string = "";
        for (let i = 0; i < nthlen; ++i) {
            let val: i64 = ts_action_params_nth_string_read_char(nth, i);
            if (val == -1) continue;
            let chrcode: u8 = <u8>(val & 0xff);
            let chridx: u8 = chrcode - 0x20;
            value = value + ASCIICHAR[chridx];
        }
        return value;
    }
}