import "allocator/arena";

import { printstr, N, ultrain_assert, RN } from "../../../src/utils";
import { Log } from "../../../src/log";
import { Contract } from "../../../lib/contract";
import { NameEx, RNEX ,NEX} from "../../../src/name_ex";

class TestTrack extends Contract {

    constructor(receiver: account_name){
        super(receiver);
        this._receiver = receiver;
    }

    @action
    public test(): void {
        this.testMax();
        Log.s("Max running successful!").flush();
        this.testIndexOf();
        Log.s("Indexof running successful!").flush();
        this.testBreak();
        Log.s("Break running successful!").flush();
        this.testTernary();
        Log.s("Ternary running successful!").flush();
        
        Log.s("Successful!!!").flush();

        this.toCheckList();
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
        assert( arr.length == 20)
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
    private testBreak():void{
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