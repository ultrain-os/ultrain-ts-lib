
/**
 * @author fanliangqin@ultrain.io
 */
import { ultrain_assert } from "../../src/utils";
import { env as Action } from "../../internal/action.d";

class Ownable {
    owner: account_name;

    constructor() {
        this.owner = Action.current_sender();
    }

    onlyOwner(): void {
        ultrain_assert(Action.current_sender() == this.owner, "only the owner of this contract can run this request.");
    }

    transferOwnership(newOwner: account_name): void {
        this.onlyOwner();
        if (Action.is_account(newOwner)) {
            this.owner = newOwner;
        }
    }
}

export class Pausable extends Ownable {
    // event Pause();
    // event Unpause();

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
        return true;
    }

    unpause(): boolean {
        this.onlyOwner();
        this.whenPaused();
        this.paused = false;
        // emit Unpause();
        return true;
    }
}
