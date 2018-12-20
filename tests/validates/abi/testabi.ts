import { Contract } from "../../../src/contract";
import { Asset } from "../../../src/asset";

@ignore
class A implements Serializable , Returnable {
    year: u64;

    toString(): string {
        return "";
    }
}

class XXX implements Serializable, Returnable {

    age: A;
    name: u64;
    a: A;

    toString(): string {
        return "";
    }
}

class TestAbi extends Contract {
    @action
    public test1(listA: Array<XXX>, listB: XXX[]): void {
    }

    @action
    public test2(b: i32): void {
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
    testClassObjArr(): XXX[] {
        return new Array<XXX>();
    }

    @action
    teststr(): string {
        return "";
    }
}