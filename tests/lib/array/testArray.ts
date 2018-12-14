import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";
import { Log } from "../../../src/log";

class ArrayFactory implements Serializable {
    int_array: Array<i32> = new Array<i32>();
    str_array: Array<string> = new Array<string>();
}

class Car implements Serializable {
    id: u64;
    name: string;
}

@database(ArrayFactory, "a")
class TestMap extends Contract {

    /**
     * Test the array index
     * @param index index of array
     */
    @action
    testAdd(id: i32, name: string): void {
        var factory = new ArrayFactory();
        var aDbManager: DBManager<ArrayFactory> = new DBManager<ArrayFactory>(NAME("a"), this.receiver, NAME("a") );
        var existing = aDbManager.exists(0);
        if (!existing) {
            factory.int_array.push(id);
            factory.str_array.push(name);
            aDbManager.emplace(this.receiver, factory);
        } else {
            aDbManager.get(0, factory);
            factory.int_array.push(id);
            factory.str_array.push(name);
            aDbManager.modify(0, factory);
        }
    }

    /**
     * Test the action array arguments.
     * @param cars the cars
     */
    @action
    public testArrObj(cars: Car[]): void {
        for (let index = 0; index < cars.length; index ++) {
            let car = cars[index];
            Log.s("Car Name:").s(car.name).s(". id:").i(car.id).flush();
        }
    } 
}