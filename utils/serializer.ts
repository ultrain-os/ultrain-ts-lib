/**
 * @author fanliangqin@ultrain.io
 */
import { DataStream } from "../utils/datastream";

/**
 * ISerializer defines two methods, serialize and deserialize.
 * but assemblyscript does not support polymorphsim yet,
 * so just let this class an empty implements.
 */
export class ISerializer {
     public serialize(s: DataStream): void {}
     public deserialize(s: DataStream): void {}
}