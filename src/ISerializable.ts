
import {DataStream} from "../lib/datastream";
/**
 * ISerializable is an interface for serialize/deserialize data,
 *
 */
export interface ISerializable {
    deserialize(ds: DataStream): void;
    serialize(ds : DataStream) : void;
    primaryKey(): u64;
}