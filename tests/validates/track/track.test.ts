import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";

class Car implements Serializable {
    name: string;
    year: i32;

    constructor(_name: string = "", _year: i32 = 0) {
        this.name = _name;
        this.year = _year;
    }

    toString(): string {
        return "name: " + this.name + ". year: " + this.year.toString();
    }
}

class TypeSet implements Serializable {
    @primaryid
    id: u64;
    account: account_name;
    str: string;
    longNum: u64;
    smallNum: i32;
    exist: bool;
    strs: Array<string>;
    nums: Array<u64>;
    car: Car;
    cars: Array<Car>;
}

@database(TypeSet, "types")
class TestTrack extends Contract {

    constructor(receiver: account_name){
        super(receiver);
    }

    @action
    public test(): void {
        this.testMax();
        this.testIndexOf();
        this.testBreak();
        this.testTernary();
        this.testArrayBracket();
        this.testPrint();
        this.toCheckList();

        let car = new Car("audi", 2018);

        let cars = new Array<Car>();
        cars.push(new Car("ben", 2018));
        cars.push(new Car("bicycle", 2000));
        this.insertTypes(2, NAME("tom"), "jack", -32, false, 64, ["abcd", "超脑时空"], [1,2,3,4], car, cars);
        this.verifyTypes(2, NAME("tom"), "jack", -32, false, 64, ["abcd", "超脑时空"], [1,2,3,4], car, cars);
        this.testAssert(true, "token exist.");
        this.removeTypes();
    }

    insertTypes(key: u64, account: account_name, name: string, age: i32, yes: bool, _u64: u64, strs: string[], nums: u64[], car: Car, cars: Car[]): void {
        var aDbManager: DBManager<TypeSet> = new DBManager<TypeSet>(NAME("types"), NAME("types"));
        var types: TypeSet = new TypeSet();
        types.account = account;
        types.str = name;
        types.smallNum = age;
        types.exist = yes;
        types.longNum = _u64;
        types.strs = strs;
        types.nums = nums;
        types.car = car;
        types.cars = cars;
        types.id = key;

        if (!aDbManager.exists(key)){
            aDbManager.emplace(types);
        }
    }

    verifyTypes(key: u64, account: account_name, name: string, age: i32, yes: bool, _u64: u64, strs: string[], nums: u64[], car: Car, cars: Car[]): void {
        var aDbManager: DBManager<TypeSet> = new DBManager<TypeSet>(NAME("types"), NAME("types"));
        var types: TypeSet = new TypeSet();
        ultrain_assert(aDbManager.exists(key), key.toString() + " not existing.");
        aDbManager.get(key, types);

        ultrain_assert(types.account == account, "Test account_name");
        ultrain_assert(types.str == name, "Test string");

        ultrain_assert(types.smallNum == age, "Test i32");
        ultrain_assert(types.exist == yes, "Test bool");
        ultrain_assert(types.longNum == _u64, "Test u64");
        ultrain_assert(types.strs.join(",") == strs.join(","), "Test string array");
        ultrain_assert(types.nums.join(",") == nums.join(","), "Test u64 arry");
        ultrain_assert(types.car.toString() == car.toString(), "Test obj");
        ultrain_assert(types.cars.toString() == cars.toString(), "Test obj array");
        Log.s("successfully!").flush();
    }

    removeTypes(): void {
        var aDbManager: DBManager<TypeSet> = new DBManager<TypeSet>(NAME("types"), NAME("types"));
        aDbManager.dropAll();
    }

    testAssert(existing: bool, msg: string): void {
        ultrain_assert(existing, msg);
    }

    private toCheckList(): void {
        Log.s("Still to check list:").flush();
    }

    private createArrayUsingBracket(len: i32): i32[] {
        var arr: Array<i32> = [];
        for (let index = 0; index < len; index ++) {
            arr.push(index);
        }
        return arr;
    }

    private testArrayBracket(): void {
        var arr = this.createArrayUsingBracket(10);
        assert( arr.length == 10);

        arr = this.createArrayUsingBracket(10);
        assert( arr.length == 10)
    }

    /**
     * Test the double return when the condition is if statement
     * @param a
     * @param b
     */
    private max(a: i32, b: i32): i32 {
        if (a > b) {
            return a;
        } else {
            return b;
        }
    }

    /**
     * Used for test the return statement in loop statement
     * @param arr
     * @param index
     */
    private indexOf(arr: Array<i32>, index: i32): i32 {
        for (let i = 0; i < arr.length; i++) {
            if(i == index){
                return arr[i];
            }
        }
        return -1;
    }

    /**
     * Check the break condition
     */
    private testBreak(): void {
        var item:i32 =0;

        for (let idx:i32=0; idx < 32; ++idx) {
            if (idx == 12) {
                item = idx + 32;
                break;
            }
        }
        assert(item == 44);
    }

    private testTernary(): void {
        var existing = false;
        var res = existing ?  666 : 999;
        assert( res == 999);

        existing = true;
        res = existing ?  666 : 999;
        assert( res == 666);
    }

    testMax(): void {
        var res = this.max(12, 23);
        assert(res == 23);
        res = this.max(12, 10);
        assert(res == 12);
        res = this.max(8, 8);
        assert(res == 8);
    }

    testIndexOf(): void {
        var res = this.indexOf([1, 2, 4], 1);
        assert(res == 2);
        res = this.indexOf([1, 2, 4], 5);
        assert(res == -1);
        res = this.indexOf([1, 2, 4], 0);
        assert(res == 1);
    }

    testPrint(): void {
        Log.s("中文：").s("追追追").flush();
        Log.s("English: ").s("1234567890ABCDEFGHIGKLMNOPQRSTUVWXYZ").flush();
        Log.i(88888).flush();
        Log.s("testPrint finished. Please check the print content.")
    }
}