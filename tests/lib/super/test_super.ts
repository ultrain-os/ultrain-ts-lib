import { Contract } from "../../../lib/contract";
import { NameEx, RNEX ,NEX} from "../../../src/name_ex";



class Super extends Contract{

        @action
        test(age:u64):void{

        }
}


export function getAge(age:i32):i32{
   
    return  age*age;
}
