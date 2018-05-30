import { DataStream } from "./datastream";
import { env as ultrain } from "./ultrain-lib";

export interface ISerializable {
    public deserialize(ds: DataStream): void { };
    public serialize(ds : DataStream) : void {};
    public bytesLength(): u32 { return 0; }
  }

export class Contract {

    receiver: u64;

    constructor(receiver: u64) {
        this.receiver = receiver;
    }

    getDataStream(): DataStream {
        let len = ultrain.action_data_size();
        let arr = new Uint8Array(len);
        ultrain.read_action_data(<usize>arr.buffer, len);
        let ds = new DataStream(<usize>arr.buffer, len);
        return ds;
    }
}
