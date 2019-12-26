import { Contract } from "../../../src/contract";
import { Asset } from "../../../src/asset";
import { Action } from "../../../src/action";

class A implements Serializable , Returnable {
    year: u64;

    toString(): string {
        return "year: " + this.year.toString();
    }
}

class Obj implements Serializable, Returnable {
    @ignore
    age: A;
    pay: u64;
    a: A;
    arr_a: Array<A>;
    map_a: Map<string, A>;
    map_arr_a: Map<string, A[]>;

    toString(): string {
        return "age: " + this.age.toString() + ".pay: " + this.pay.toString() + ".a: " + this.a.toString();
    }
}

class Car implements Serializable {
    name: string;
    year: i32;
    info: Map<string, u32>;

    constructor(_name: string = "", _year: i32 = 0) {
        this.name = _name;
        this.year = _year;
        this.info = new Map<string, u32>();
        this.info.set("bmw", 9527);
    }

    toString(): string {
        return "name: " + this.name + ". year: " + this.year.toString();
    }
}

@database(Car, "cars")
@database(Obj, "objects")
class TestAbi extends Contract {
    @action
    common_params(level: u32, name: string, finished: boolean): void {
    }

    @action("pureview")
    common_params_array(level: u32[], name: string[], finished: boolean[]): void {
    }

    @action
    object_params(obj: Obj): void {

    }

    @action
    object_params_array(obj: Obj[]): void {

    }
}