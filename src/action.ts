/**
 * @author fanliangqin@ultrain.io
 */
import { Asset } from "./asset";
import { PermissionLevel } from "./permission-level";
import { NameEx, NameEx as action_name, NEX, RNEX } from "../lib/name_ex";
import { env as ActionAPI } from "../internal/action.d";

/**
 * class TransferParams is applied to transfer Tokens from an account to another.
 *
 * @class TransferParams
 *
 * @example
 * import { TransferParams } from "ultrain-ts-lib/src/action";
 */
export class TransferParams implements Serializable {
    public from: u64;
    public to: u64;
    public quantity: Asset;
    public memo: string;

    constructor(from: u64 = 0, to: u64 = 0, quantity: Asset = new Asset(), memo: string = "") {
        this.from = from;
        this.to = to;
        this.quantity = quantity;
        this.memo = memo;
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.from);
        ds.write<u64>(this.to);
        this.quantity.serialize(ds);
        ds.writeString(this.memo);
    }

    public deserialize(ds: DataStream): void {
        this.from = ds.read<u64>();
        this.to = ds.read<u64>();
        if (this.quantity == null) this.quantity = new Asset();
        this.quantity.deserialize(ds);
        this.memo = ds.readString();
    }

    public primaryKey(): u64 { return <u64>0; }
}
/**
 * class ActionImpl stands for a real action struct.
 *
 * @class ActionImpl
 *
 * @example
 * import { ActionImpl } from "ultrain-ts-lib/src/action";
 */
export class ActionImpl implements Serializable {
    public account: account_name;
    public name: action_name;
    public authorization: PermissionLevel[];
    public data: u8[];
    // public ability: u8;

    constructor() {
        this.account = 0;
        this.name = new NameEx(0, 0);
        this.authorization = [];
        this.data = [];
        // this.ability = 0;
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.account);
        this.name.serialize(ds);
        ds.writeComplexVector<PermissionLevel>(this.authorization);
        ds.writeVector<u8>(this.data);
        // ds.write<u8>(this.ability);
    }

    public deserialize(ds: DataStream): void {
        this.account = ds.read<u64>();
        this.name.deserialize(ds);
        this.authorization = ds.readComplexVector<PermissionLevel>();
        this.data = ds.readVector<u8>();
        // this.ability = ds.read<u8>();
    }

    public primaryKey(): u64 { return <u64>0; }
}

/**
 * class Action is applied to access an action's context information.
 * This class is static.
 *
 * @class Action
 *
 * @example
 * import { Action } from "ultrain-ts-lib/src/action";
 */
export class Action {
    /**
     * to get the sender of current action, specially, 'sender' means whose permission key is used by '-p',
     * such as command 'clultrain push action kobe '["params"]' -p james's-key',
     * 'james' is the sender's account name.
     * @returns return the sender's account name.
     */
    public static get sender(): account_name {
        return ActionAPI.current_sender();
    }
    /**
     * to get the receiver's account name of current action.
     * such as command 'clultrain push action kobe '["params"]' -p james's-key',
     * 'kobe' is the receiver's account name.
     */
    public static get receiver(): account_name {
        return current_receiver();
    }
    /**
     * to check if an account name has been authored.
     * @param account the account name which will be checked.
     * @returns boolean value, return true means the account is authored, otherwised false.
     */
    public static hasAuth(account:account_name): boolean {
        return ActionAPI.has_auth(account);
    }
    /**
     * check the authority of a speicfic account name.
     * @param account account_name whose authority is required.
     */
    public static requireAuth(account: account_name): void {
        ActionAPI.require_auth(account);
    }

    /**
     * Check the account and permission.
     *
     * @static
     * @param {account_name} account The account name.
     * @param {u64} perm The permission name.
     * @memberof Action
     */
    public static requireAuth2(account:account_name, perm: u64): void {
        ActionAPI.require_auth2(account, perm);
    }

    /**
     * add account to be notified.
     * @param account account to be notified.
     */
    public static requireRecipient(account: account_name): void {
        ActionAPI.require_recipient(account);
    }

    private _action: NameEx;

    constructor(h: u64, l: u64) {
        this._action = new NameEx(h, l);
    }

    /**
     * get property of action's code, which is an instance of NameEx.
     */
    public get code(): NameEx {
        return this._action;
    }

    /**
     * get property of action's name, which is a human readable string.
     */
    public get name(): string {
        return RNEX(this._action.valueH, this._action.valueL);
    }

    /**
     * equal operation of Action.
     * @param lhs left hand side instance of Action.
     * @param rhs right hand side instance of Action.
     * @returns true or false.
     */
    @operator("==")
    private static _eq(lhs: Action, rhs: Action): boolean {
        return lhs._action == rhs._action;
    }

    /**
     * send an inline action.
     *
     * @static
     * @template T an object which implements interface Serializable.
     * @param {PermissionLevel} pl an instance of Permission_Level.
     * @param {account_name} receiver the contract which receive this action.
     * @param {NameEx} action the name of this action.
     * @param {T} data parameter of this action, which must be type of T.
     * @memberof Action
     */
    public static sendInline<T extends Serializable>(pl: PermissionLevel[], receiver: account_name, action: NameEx, data: T): void {
        let ds = composeActionData(pl, receiver, action, data);
        ActionAPI.send_inline(<usize>ds.buffer, ds.pos);
    }

    public static sendContextFreeInline<T extends Serializable>(pl: PermissionLevel[], receiver: account_name, action: NameEx, data: T): void {
        ultrain_assert(pl.length == 0, "context free action need nothing permission info.");
        let ds = composeActionData(pl, receiver, action, data);
        ActionAPI.send_context_free_inline(<usize>ds.buffer, ds.pos);
    }
}
export function SerializableToArray<T extends Serializable>(dt: T): u8[] {
    let len = DataStream.measure<T>(dt);
    let arr = new Uint8Array(len);
    let ds = new DataStream(<usize>arr.buffer, len);
    dt.serialize(ds);
    return ds.toArray<u8>();
}

function composeActionData<T extends Serializable>(pl: PermissionLevel[], receiver: account_name, action: NameEx, data: T): DataStream {
    let actimpl: ActionImpl = new ActionImpl();
    actimpl.authorization = pl;
    actimpl.account = receiver;
    actimpl.name = action;
    actimpl.data = SerializableToArray(data);


    let len = DataStream.measure<ActionImpl>(actimpl);
    let arr = new Uint8Array(len);
    let ds = new DataStream(<usize>arr.buffer, len);
    actimpl.serialize(ds);
    return ds;
}
/**
 * convert a string to {@link Action}.
 * @param str an readable string of action name. It can only include: _0-9a-zA-Z
 *
 * @example
 * import { ACTION } from "ultrain-ts-lib/src/action";
 */
export function ACTION(str: string): Action {
    let nex = NEX(str);
    return new Action(nex.valueH, nex.valueL);
}
