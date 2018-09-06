import {toUTF8Array } from "../src/utils";
/**
 * internal memory HEADER SIZE. NEVER used by users.
 */
const HEADER_SIZE = (offsetof<String>() + 1) & ~1; // 2 byte aligned

/**
 * internal class, not for external users.
 */
export class DSHelper {
    static serializeComplexVector<T extends Serializable>(arr: T[]): DataStream {
        let len = DataStream.measureComplexVector<T>(arr);
        let data = new Uint8Array(len);
        let ds = new DataStream( changetype<usize>(data.buffer), len);
        ds.writeComplexVector<T>(arr);
        return ds;
    }

    static serializeComplex<T extends Serializable>(t: T): DataStream {
        let len = DataStream.measure<T>(t);
        let data = new Uint8Array(len);
        let ds = new DataStream(changetype<usize>(data.buffer), len);
        t.serialize(ds);
        return ds;
    }

    static getDataStreamWithLength(len: u32): DataStream {
        let arr = new Uint8Array(len);
        let ds = new DataStream(changetype<usize>(arr.buffer), len);
        return ds;
    }
}
/**
 * internal class, not for external users.
 *
 * @class DataStream
 */
