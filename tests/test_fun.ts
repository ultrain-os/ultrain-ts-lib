import { Contract } from "../lib/contract";
import { printstr, N, ultrain_assert, RN } from "../src/utils";
import "allocator/arena";

export class Football extends Contract {
    getName(): string {
        return "football";
    }


    getAge(): u64;


    @action
    say(owner: account_name): void {
        let name = this.getName();
        printstr(name);
    }

}


