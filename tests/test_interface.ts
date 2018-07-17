import { Contract } from "../lib/contract";
import { printstr, N, ultrain_assert, RN } from "../src/utils";
import "allocator/arena";
import { ISerializable } from "../lib/ISerializable";
import { DataStream } from "../src/datastream";



export class Car implements ISerializable {

}

export class Football extends Contract {
    getName(): string {
        return "football";
    }

    @action
    say(owner: account_name): void {
        let name = this.getName();
        printstr(name);
    }

}


