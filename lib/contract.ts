import { DataStream } from "../src/datastream";
import { env as action } from "../internal/action.d";

export function DataStreamFromCurrentAction(): DataStream {
    let len = action.action_data_size();
    let arr = new Uint8Array(len);
    action.read_action_data(changetype<usize>(arr.buffer), len);
    let ds = new DataStream(changetype<usize>(arr.buffer), len);
    return ds;
}

export class Contract {

    protected _receiver: account_name;

    constructor(receiver: account_name) {
        this._receiver = receiver;
    }

    public get receiver(): account_name {
        return this._receiver;
    }

    public getDataStream(): DataStream {
        return DataStreamFromCurrentAction();
    }

    public onInit(): void {}

    public onStop(): void {}
}
