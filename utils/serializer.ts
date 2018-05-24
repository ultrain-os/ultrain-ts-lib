/**
 * @author fanliangqin@ultrain.io
 */
import { DataStream } from "../utils/datastream";
import { Log } from "../lib/log";

/**
 * ISerializer defines two methods, serialize and deserialize.
 * but assemblyscript does not support polymorphsim yet,
 * so just let this class an empty implements.
 */
export class ISerializer {
    public inited: boolean = false;

     public serialize(s: DataStream): void {
        Log.s("ISerializer start to serialize.").flush();
     }
     public deserialize(s: DataStream): void {
        Log.s("ISerializer start to deserialize.").flush();
     }
     public primary_key(): u64 { return 0; }
}