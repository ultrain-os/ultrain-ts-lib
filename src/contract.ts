import { env as action } from "../internal/action.d";
import { NameEx, NEX } from "../lib/name_ex";

export function DataStreamFromCurrentAction(): DataStream {
    let len = action.action_data_size();
    let arr = new Uint8Array(len);
    action.read_action_data(changetype<usize>(arr.buffer), len);
    let ds = new DataStream(changetype<usize>(arr.buffer), len);
    return ds;
}

export class Contract {

    protected _receiver: account_name;
    private currentActionName: NameEx;


    constructor(receiver: account_name) {
        this._receiver = receiver;
    }

    public get receiver(): account_name {
        return this._receiver;
    }

    public setActionName(actH: u64, actL: u64): void {
        this.currentActionName = new NameEx(actH, actL);
    }

    public isAction(actionName: string): bool {
        return this.currentActionName == NEX(actionName);
    }

    public getDataStream(): DataStream {
        return DataStreamFromCurrentAction();
    }

    public onInit(): void {}

    public onStop(): void {}


}
