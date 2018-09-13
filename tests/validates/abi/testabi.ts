import { Contract } from "../../../src/contract";


@ignore
class A   implements Serializable{
    year: u64;
}


class XXX implements Serializable {

    age: A;
    name: u64;
    a: A;
}

class TestAbi extends Contract {
    @action
    public test1(listA: Array<XXX>, listB: XXX[]): void {
     
    }
    @action
    public test2(b: i32): void {
        
     
    }
}