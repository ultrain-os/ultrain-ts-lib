import { Contract } from "../../../src/contract";
import { Log } from "../../../src/log";

class A {
    age:u64;
    year:u64;
    defaultNum:u64= 12;
}

class MyContract extends Contract {

    @action
    test(len:i32):void{
        let arr = this.assemblyArr(len);
        for(let index=0; index < arr.length; index++){
            Log.s("element").i(index).s("value").i(arr[index].age).flush();
        }

        let a: A = new A();

        Log.s("default").i(a.defaultNum).flush();
    }

    assemblyArr(len:i32): A[]{

        let size = sizeof<A>();
        let aArr = new Array<A>();
        let buffer =  memory.allocate(sizeof<A>()* len );

        Log.s("sizeof").i(sizeof<A>()).flush();
        Log.s("sizeof u64").i(sizeof<u64>()).flush();
        Log.s("alignof").i(alignof<A>()).flush();

        for(let index=0; index < len; index ++){
            let a:A =load<A>(buffer + index * (size), sizeof<A>());
            Log.s("position").i(<usize>a).flush();
            a.age = index;
            aArr.push(a);
        }
        return aArr;
    }
}

