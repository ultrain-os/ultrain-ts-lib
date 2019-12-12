import { Contract } from "../../src/contract";
import { Asset } from "../../src/asset";
import { NAME } from "../../src/account";

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

/**
 * Test returnable
 */
class TestAbi extends Contract {
  
    @action
    testReturnAsset(): Asset {
        return new Asset(1000, NAME("love"));
    }

    @action
    testReturnAssetArr(): Asset[] {
        let asset1 = new Asset(1000, NAME("love"));
        let asset2 = new Asset(1000, NAME("love"));
        let arr =  new Array<Asset>();
        arr.push(asset1);
        arr.push(asset2);
        return arr;
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