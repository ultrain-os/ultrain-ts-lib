import { Contract } from "../../../src/contract";
import { Asset } from "../../../src/asset";

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
    toString(): string {
        return "age: " + this.age.toString() + ".pay: " + this.pay.toString() + ".a: " + this.a.toString();
    }
}

class TestAbi extends Contract {
    @action
    public test1(listA: Array<Obj>, listB: Obj[]): void {
    }

    @action
    testReturnAsset(): Asset {
        return new Asset();
    }

    @action
    testReturnAssetArr(): Asset[] {
        return new Array<Asset>();
    }

    @action
    testClassObj(): A {
        return new A();
    }

    @action
    testClassObjArr(): Obj[] {
        var obj = new Obj();
        var arr = new Array<Obj>();
        arr.push(obj);
        return arr;
    }

    @action
    teststr(): string {
        return "return a string.";
    }
}