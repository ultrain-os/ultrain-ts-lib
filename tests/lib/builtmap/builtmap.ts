import { Contract } from "../../../src/contract";
import { Log } from "../../../src/log";

class TestMap extends Contract {

    @action
    public test(arr:string[]): void {

        var str_str_map = new Map<string, string>();
        var int_str_map = new Map<i32, string>();
        var str_int_map = new Map<string, i32>();
        for (let index = 0; index < arr.length; index ++) {
            str_str_map.set(arr[index], arr[index]);
            int_str_map.set(index, arr[index]);
            str_int_map.set(arr[index], index);
        }

        Log.s("The key length: ").i(str_str_map.size).flush();

        var keys = str_str_map.keys();
        for (let index = 0; index < keys.length; index ++) {
            Log.s("Str_str Key: ").s(keys[index]).s(". Val: ").s(str_str_map.get(keys[index])).flush();
            Log.s("int_str Key: ").i(index).s(". Val: ").s(int_str_map.get(index)).flush();
            Log.s("str_int Key: ").s(keys[index]).s(". Val: ").i(str_int_map.get(keys[index])).flush();
        }
    }
}