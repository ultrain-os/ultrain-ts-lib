
/**
 * @author fanliangqin@ultrain.io
 */
import { Action } from "../../src/action";
import { emit, EventObject } from "../../src/events";
import { Account } from "../../src/account";

class Ownable {
    owner: account_name;

    constructor() {
        this.owner = Action.sender;
    }

    onlyOwner(): void {
        ultrain_assert(Action.sender == this.owner, "only the owner of this contract can run this request.");
    }

    transferOwnership(newOwner: account_name): void {
        this.onlyOwner();
        if (Account.isValid(newOwner)) {
            this.owner = newOwner;
        }
    }
}

export class Pausable extends Ownable {

    paused: boolean = false;

    whenNotPaused(): void {
        ultrain_assert(!this.paused, "the contract is paused and can not run this request.");
    }

    whenPaused(): void {
        ultrain_assert(this.paused, "the contract is not puased and can not run this request.");
    }

    pause(): boolean {
        this.onlyOwner();
        this.whenNotPaused();
        this.paused = true;
        // emit Pause();
        emit("Pause", EventObject);
        return true;
    }

    unpause(): boolean {
        this.onlyOwner();
        this.whenPaused();
        this.paused = false;
        // emit Unpause();
        emit("Unpause", EventObject);
        return true;
    }
}
