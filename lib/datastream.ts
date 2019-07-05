/**
 * internal class, not for external users.
 */
export class DSHelper {
    static serializeComplexVector<T extends Serializable>(arr: T[]): DataStream {
        let len = DataStream.measureComplexVector<T>(arr);
        let data = new Uint8Array(len);
        let ds = new DataStream(data.buffer, len);
        ds.writeComplexVector<T>(arr);
        return ds;
    }

    static serializeComplex<T extends Serializable>(t: T): DataStream {
        let len = DataStream.measure<T>(t);
        let data = new Uint8Array(len);
        let ds = new DataStream(data.buffer, len);
        t.serialize(ds);
        return ds;
    }

    static getDataStreamWithLength(len: u32): DataStream {
        let arr = new Uint8Array(len);
        let ds = new DataStream(arr.buffer, len);
        return ds;
    }
}
