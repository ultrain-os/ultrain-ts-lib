import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";

class TypeZoo implements Serializable {
    account: account_name;
    name: string;
    _64: u64;
    _i32: i32;
    _bool: bool;
}

@database(TypeZoo, "types")
class TestTrack extends Contract {

    constructor(receiver: account_name){
        super(receiver);
    }

    @action
    public test(): void {
        this.testMax();
        Log.s("12345678Max-runnAing-successful!").flush();
        this.testIndexOf();
        Log.s("12345678Indexof-running-successful!").flush();
        this.testBreak();
        Log.s("12345678Break-running-successful!").flush();
        this.testTernary();
        Log.s("123456789Test terbart running successful!").flush();
        Log.s("123456789Successful!!!").flush();
        this.toCheckList();
    }

    @action
    testType(account: account_name, user_name: string, age: i32, yes: bool, _u64: u64): void {
        var aDbManager: DBManager<TypeZoo> = new DBManager<TypeZoo>(NAME("types"), NAME("types"));
        var types: TypeZoo = new TypeZoo();
        types.account = account;
        types.name = user_name;
        types._i32 = age;
        types._bool = yes;
        types._64 = _u64;

        if (!aDbManager.exists(0)){
            aDbManager.emplace(types);
        }
        if (yes) {
            Log.s("yes is true. ").flush();
        } else {
            Log.s("yes is false. ").flush();
        }
        Log.s("account:").i(account).s(". user name:").s(user_name).s(". age:").i(age).s(". yes:").i(yes).flush();
    }

    private toCheckList(): void {

        Log.s("Still to check list:").flush();
        this.testArrayBracket();
        Log.s("ArrayBracket running not expected!").flush();
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
}