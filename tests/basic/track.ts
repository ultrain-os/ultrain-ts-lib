import { Log } from "../../src/log";
import { Contract } from "../../src/contract";
import { NAME } from "../../src/account";

class Car implements Serializable {
    name: string;
    year: i32;

    toString(): string {
        return "name: " + this.name + ". year: " + this.year.toString();
    }
}

class UnitStatus implements Serializable, Returnable {
    unitId: u64;

    toString(): string {
        return this.unitId.toString();
    }
}


class TestTrack extends Contract {

    constructor(receiver: account_name){
        super(receiver);
    }

    @action
    public testTrack(): void {
        this.testMax();
        this.testIndexOf();
        this.testBreak();
        this.testTernary();
        this.testArrayBracket();
        this.testPrint();
        this.testConvert();
        this.testContinue();
        this.toCheckList();
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

    private testContinue(): UnitStatus[] {
        const result: UnitStatus[] = new Array<UnitStatus>();
        for (let i = 0; i < 20; ++i) {
            if (i < 10) {
                let status = new UnitStatus();
                status.unitId = i;
                result.push(status);
                continue;
            }
            let status = new UnitStatus();
            result.push(status);
        }
        return result;
    }

    private covert<T>(param: T): void {
        if (isInteger(param)) {
            Log.i(changetype<T>(param));
        }
        if (isString(param)) {
            Log.s(changetype<string>(param));
        }
        Log.flush();
    }

    private testConvert(): void {
        this.covert<string>("121");
        this.covert<i32>(121);
        this.covert<i32>(123123);
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