import { Contract } from "../../../src/contract";
import { Log } from "../../../src/log";

class Animal implements Serializable {
    kind: i32;
    name: string;
}

class Tiger extends Animal {
    region: string;
}

class Tester extends Contract {
    @action
    addTiger(tiger: Tiger): void {
        Log.s("Tiger name: ").s(tiger.name).s(". region: ").s(tiger.region).s(" . kind: ").i(tiger.kind).flush();
    }
}
