import { Contract } from "../../../src/contract";
import { Log } from "../../../src/log";
import { NAME } from "../../../src/account";

class A implements Serializable {
    int_array: Array<i32> = new Array<i32>();
    str_array: Array<string> = new Array<string>();
}

@database(A, "a")
class TestMap extends Contract {

    @action
    public testArr(index: i32): void {
        var a = new A();
        for (let i = 0; i < index; i++) {        
            a.int_array.push(i);
            a.str_array.push("jack");
        }

        var aDbManager: DBManager<A> = new DBManager<A>(NAME("a"), this.receiver, NAME("a") );
        var existing = aDbManager.exists(0);
        if (!existing) {
            aDbManager.emplace(this.receiver, a);
        }
    }
}