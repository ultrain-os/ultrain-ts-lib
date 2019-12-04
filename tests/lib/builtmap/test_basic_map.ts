import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";
import { Log } from "../../../src/log";

class Obj implements Serializable {
    x: u8;
    y: u8;

    constructor(x: u8 = 6, y: u8 = 8) {
        this.x = x;
        this.y = y;
    }

    @operator("==")
    public static __eq(lhs: Obj, rhs: Obj): boolean {
        return lhs.x == rhs.x && lhs.y == rhs.y;
    }
}

class A implements Serializable {
    arr: Array<string> = new Array<string>();
    str_str_map: Map<string, string> = new Map<string, string>();
    str_int_map: Map<string, u32> = new Map<string, u32>();
    int_str_map: Map<u32, string> = new Map<u32, string>();
    account_str_map: Map<account_name, string> = new Map<account_name, string>();
    u64_str_map: Map<u64, string> = new Map<u64, string>();
    int_object_map: Map<u64, Obj> = new Map<u64, Obj>();
    object_int_map: Map<Obj, u64> = new Map<Obj, u64>();


    primaryKey(): id_type {
        return 0;
    }
}

const TABLE_NAME: string = "map"

@database(A, TABLE_NAME)
class TestMap extends Contract {

    @action
    public testInsert(key: string, value: string, _int: u32): void {
      var a = new A();
      let aDbManager: DBManager<A> = new DBManager<A>(NAME(TABLE_NAME), NAME(TABLE_NAME) );
      let existing = aDbManager.exists(0);
      
      if (existing) {
          aDbManager.get(0, a);
          a.arr.push(key);
          a.arr.push(value);
          a.str_str_map.set(key, value);
          a.str_int_map.set(key, _int);
          Log.s("testInsert modify: ").i(existing).flush();
          aDbManager.modify(a);
      } else {
          a.arr.push(key);
          a.arr.push(value);

          a.str_str_map.set(key, value);
          a.str_int_map.set(key, _int);
          a.int_str_map.set(_int, key);


          a.int_object_map.set(4, new Obj());
          a.int_object_map.set(44, new Obj(100, 200));

          a.object_int_map.set(new Obj(100, 200), 1);
          a.object_int_map.set(new Obj(10, 20), 2);
  
          Log.s("testInsert emplace: ").i(existing).flush(); 
          aDbManager.emplace(a);
      }
    }

    @action
    public printMap(): void {
        var a = new A();
        let aDbManager: DBManager<A> = new DBManager<A>(NAME("a"), NAME("a"));
        let existing = aDbManager.get( 0 , a);
        Log.s("print map existing: ").i(existing).flush();
        ultrain_assert(existing, "Database data not existing!");

        if (existing) {
            let map = a.str_str_map;
            let keys = map.keys();
            let strVals = map.values();
            let intVals = a.str_int_map.values();
            Log.s("map size:").i(keys.length).flush();
            for (let index = 0; index < keys.length; index ++) {
                Log.s("str key: ").s(keys[index]).s(". value: ").s(strVals[index]).flush();
                Log.s("str key: ").s(keys[index]).s(". value: ").i(intVals[index]).flush();
            }

            let arr = a.arr;
            for (let index = 0; index < arr.length; index ++) {
                Log.s("arr value: ").s(arr[index]).flush();
            }
        }
    }


    // @action
    // public testAnd(aa:i32, b: i32, having: bool): void {
    //     let aDbManager: DBManager<A> = new DBManager<A>(NAME("a"), this.receiver, NAME("a"));
    //     var a = new A();
    //     let existing = aDbManager.exists(0);
    //     if (existing) {
    //         aDbManager.get( 0 , a);
    //         Log.s("test and size: ").i(<bool>a.str_str_map.size).flush();
    //         Log.s("test and having: ").i(having).flush();
    //         Log.s("test and existing: ").i(aDbManager.exists(0) && having  && <bool>a.str_str_map.size).flush();
    //         let v = aa != 0 && b != aa && b != 1
    //         Log.s("boolean value: ").i(v).flush();
    //     } 
    // }

    @action
    public test(arr: string[]): void {

        var str_str_map = new Map<string, string>();
        var int_str_map = new Map<i32, string>();
        var str_int_map = new Map<string, i32>();
        for (let index = 0; index < arr.length; index++) {
            str_str_map.set(arr[index], arr[index]);
            int_str_map.set(index, arr[index]);
            str_int_map.set(arr[index], index);
        }

        Log.s("The key length: ").i(str_str_map.size).flush();

        var keys = str_str_map.keys();
        for (let index = 0; index < keys.length; index++) {
            Log.s("Str_str Key: ").s(keys[index]).s(". Val: ").s(str_str_map.get(keys[index])).flush();
            Log.s("int_str Key: ").i(index).s(". Val: ").s(int_str_map.get(index)).flush();
            Log.s("str_int Key: ").s(keys[index]).s(". Val: ").i(str_int_map.get(keys[index])).flush();
        }
    }
}