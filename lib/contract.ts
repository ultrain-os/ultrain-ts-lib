import { DataStream } from "../src/datastream";
import { env as action } from "../internal/action.d";

export function DataStreamFromCurrentAction(): DataStream {
    let len = action.action_data_size();
    let arr = new Uint8Array(len);
    action.read_action_data(<usize>arr.buffer, len);
    let ds = new DataStream(<usize>arr.buffer, len);
    return ds;
}

export class Contract {

    receiver: u64;

    constructor(receiver: u64) {
        this.receiver = receiver;
    }

    getDataStream(): DataStream {
        return DataStreamFromCurrentAction();
    }
}
