import { DataStream } from "../lib/datastream";
import { env as action } from "../internal/action.d";

export function DataStreamFromCurrentAction(): DataStream {
    let len = action.action_data_size();
    let arr = new Uint8Array(len);
    action.read_action_data(changetype<usize>(arr.buffer), len);
    let ds = new DataStream(changetype<usize>(arr.buffer), len);
    return ds;
}
/**
 * It is the base class of any executable contract,
 * each concrete contract should extend class Contract.
 */
export class Contract {

    protected _receiver: account_name;

    constructor(receiver: account_name) {
        this._receiver = receiver;
    }
    /**
     * The receiver of a contract, normally it's the account name which the contract deployed to.
     */
    public get receiver(): account_name {
        return this._receiver;
    }

    public getDataStream(): DataStream {
        return DataStreamFromCurrentAction();
    }
    /**
     * Before execute any action, onInit() will be invoked at first.
     * In this method, you can do some initialize operations.
     */
    public onInit(): void {}

    /**
     * After an action executed, onStop() will be invoked.
     * You can do persistent operations in this method.
     */
    public onStop(): void {}
}
