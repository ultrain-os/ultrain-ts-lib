import { env as action } from "../internal/action.d";
import { NameEx, NEX } from "../lib/name_ex";
import { NAME } from "./account";
import { Return, ReturnArray } from "../src/return";

/**
 * To get a DataStream of current action.
 *
 * @example
 * import { DataStreamFromCurrentAction } from "ultrain-ts-lib/src/contract";
 */
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
 *
 * @example
 * import { Contract } from "ultrain-ts-lib/src/contract";
 */
export class Contract {

    protected _receiver: account_name;
    private _currentActionName: NameEx;

    constructor(receiver: account_name) {
        this._receiver = receiver;
    }
    /**
     * The receiver of a contract, normally it's the account name which the contract deployed to.
     */
    public get receiver(): account_name {
        return this._receiver;
    }

    public get action(): NameEx {
        return this._currentActionName;
    }

    public setActionName(actH: u64, actL: u64): void {
        this._currentActionName = new NameEx(actH, actL);
    }

    public isAction(actionName: string): bool {
        return this._currentActionName == NEX(actionName);
    }

    getDataStream(): DataStream {
        return DataStreamFromCurrentAction();
    }

    /**
     *To determine which action can will be accepted.
     *
     * @param {u64} originalReceiver the original receiver of this action.
     * @param {NameEx} action the action name
     * @returns {boolean} return true means this action can be accepted, otherwise it would be rejected.
     * @memberof Contract
     */
    public filterAction(originalReceiver: u64): boolean {
        return this.receiver == originalReceiver || this.action == NEX("onerror");
    }

    returnVal<T>(val: T): void {
        Return<T>(val);
    }

    returnArray<T>(arr: T[]): void {
        ReturnArray<T>(arr);
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

    /**
     * If this contract filter 'onerror' event, then this function will be invoked.
     */
    public onError(): void {}

    /**
     * This a safe filter for your contract if you accept the recepient from utrio.token while someone transfer UGAS to you.
     * It will reject the fake UGAS attack, fake transfer notification and reject calling your "transfer" action directly
     *
     * @static
     * @param {u64} receiver action receiver.
     * @param {u64} originalReceiver the original account who accept this action.
     * @param {NameEx} action the action name.
     * @returns {boolean} return true means this action can be accepted, otherwise it would be rejected.
     * @memberof Contract
     */
    public static filterAcceptTransferTokenAction(receiver: u64, originalReceiver: u64, action: NameEx): boolean {
        return (originalReceiver == receiver && action != NEX("transfer")) || (originalReceiver == NAME("utrio.token") && action == NEX("transfer"));
    }
}
