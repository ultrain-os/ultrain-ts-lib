import "allocator/arena";
import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";
import { RNAME, NAME } from "../../../src/account";
import { ultrain_assert } from "../../../src/utils";
import { Map } from "../../../lib/map";
import { DBManager } from "../../../src/dbmanager";
import { ArrayMap } from "../../../lib/arraymap";

class Obj implements Serializable {
    x: u8;
    y: u8;
    z: u64;

    constructor() {
        Log.s("Obj constructor called.").flush();
        this.x = 6;
        this.y = 8;
        this.z = 0;
    }

    public serialize(ds: DataStream): void {
        ds.write<u8>(this.x);
        ds.write<u8>(this.y);
    }

    public deserialize(ds: DataStream): void {
        this.x = ds.read<u8>();
        this.y = ds.read<u8>();

        Log.s("Obj.deserialize ").i(this.x).s("  ").i(this.y).flush();
    }
}

class A implements Serializable {
    int_int_Map: Map<u8, u8> = new Map<u8, u8>();
    int_string_map: Map<u16, string> = new Map<u16, string>();
    int_boolean_map: Map<u32, boolean> = new Map<u32, boolean>();
    int_object_map: Map<u64, Obj> = new Map<u64, Obj>();

    int_int_array_map: ArrayMap<u8, u8> = new ArrayMap<u8, u8>();
    int_string_array_map: ArrayMap<u8, string> = new ArrayMap<u8, string>();
    int_object_array_map: ArrayMap<u8, Obj> = new ArrayMap<u8, Obj>();

    // public serialize(ds: DataStream): void {
    //     this.int_int_Map.serialize(ds);
    //     this.int_string_map.serialize(ds);
    //     this.int_boolean_map.serialize(ds);
    //     this.int_object_map.serialize(ds);
    //     this.int_int_array_map.serialize(ds);
    //     this.int_string_array_map.serialize(ds);
    //     this.int_object_array_map.serialize(ds);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.int_int_Map.deserialize(ds);
    //     this.int_string_map.deserialize(ds);
    //     this.int_boolean_map.deserialize(ds);
    //     this.int_object_map.deserialize(ds);
    //     this.int_int_array_map.deserialize(ds);
    //     this.int_string_array_map.deserialize(ds);
    //     this.int_object_array_map.deserialize(ds);
    // }
}


@database(A, "aaaaa")
class MapTest extends Contract{

    @action
    teststore(a: u64):void{
        let _uint8: u8 = 0;
        let _int8: i8 = <i8> -3;
        let _uint64: u64 = <u64>20;
        let _int64: i64 = <i64>-100;

        ultrain_assert(isInteger(_uint8), "u8 assert failed.");
        ultrain_assert(isInteger(_int8), "i8 assert failed.");
        ultrain_assert(isInteger(_uint64), "u64 assert failed.");
        ultrain_assert(isInteger(_int64), "i64 assert failed.");

        let _b: boolean = false;
        ultrain_assert(isInteger(_b), "boolean assert failed.");

        let _str: string = "a string";
        ultrain_assert(isString(_str), "string assert failed.");
        ultrain_assert(isArray(_str), "string is also an array.");

        let _cls: A = new A();
        ultrain_assert(isReference(_cls), "reference assert failed.");

        let _arr: u8[] = [0, 1, 2];
        ultrain_assert(isArray(_arr), "array assert failed.");


        let mp = new A();
        mp.int_boolean_map.set(1, false);
        mp.int_boolean_map.set(11, true);

        mp.int_int_Map.set(2, 8);
        mp.int_int_Map.set(22, 88);

        mp.int_string_map.set(3, "kkk");
        mp.int_string_map.set(33, "jjj");

        let oo = new Obj();
        oo.x = 100;
        oo.y = 200;

        mp.int_object_map.set(4, new Obj());
        mp.int_object_map.set(44, oo);

        mp.int_int_array_map.set(2, [0, 1, 2, 3]);
        mp.int_int_array_map.set(22, [4, 5, 6, 7]);

        mp.int_string_array_map.set(3, ["aaa", "bbb", "ccc"]);
        mp.int_string_array_map.set(33, ["ddd", "eee", "fff"]);

        let obj = new Obj();
        obj.x = 18;
        obj.y = 36;
        mp.int_object_array_map.set(4, [new Obj(), obj, new Obj()]);

        let db = new DBManager<A>(NAME("aaaaa"), this.receiver, NAME("aaaaa"));
        db.emplace(this.receiver, mp);
    }

    @action
    testrestore(b: u64): void {
        let db = new DBManager<A>(NAME("aaaaa"), this.receiver, NAME("aaaaa"));
        let mp = new A();
        let existing = db.exists(0);
        ultrain_assert(existing, "can not get stored map");
        if (existing) {
            db.get(0, mp);
            ultrain_assert(mp.int_boolean_map.get(1) == false, "int boolean false map failed");
            ultrain_assert(mp.int_boolean_map.get(11) == true, "int boolean true map failed");

            ultrain_assert(mp.int_int_Map.get(2) == 8, "int int 8 map failed");
            ultrain_assert(mp.int_int_Map.get(22) == 88, "int int 88 map failed");

            ultrain_assert(mp.int_string_map.get(3) == "kkk", "int string kkk asserted.");
            ultrain_assert(mp.int_string_map.get(33) == "jjj", "int string jjj asserted.");

            ultrain_assert(mp.int_object_map.get(4).x ==6 && mp.int_object_map.get(4).y == 8, "int object 4 failed.");
            ultrain_assert(mp.int_object_map.get(44).x ==100 && mp.int_object_map.get(44).y == 200, "int object 44 failed.");

            let intarr2 = mp.int_int_array_map.get(2);
            ultrain_assert(intarr2.length == 4, "int int array 2 length failed.");
            for (let i: i32 = 0; i < intarr2.length; i++) {
                ultrain_assert(intarr2[i] == i, "int int array 2 value failed.");
            }
            let intarr22 = mp.int_int_array_map.get(22);
            ultrain_assert(intarr22.length == 4, "int int array 22 length failed.");
            for (let i: i32 = 0; i < intarr22.length; i++) {
                ultrain_assert(intarr22[i] == i+4, "int int array 22 value failed.");
            }

            let intstr3 = mp.int_string_array_map.get(3);
            ultrain_assert(intstr3.length == 3, "int string array 3 length failed.");
            ultrain_assert(intstr3[0] == "aaa", "int string 3 index 0 failed.");
            ultrain_assert(intstr3[1] == "bbb", "int string 3 index 1 failed.");
            ultrain_assert(intstr3[2] == "ccc", "int string 3 index 2 failed.");

            let intstr33 = mp.int_string_array_map.get(33);
            ultrain_assert(intstr33.length == 3, "int string array 33 length failed.");
            ultrain_assert(intstr33[0] == "ddd", "int string 33 index 0 failed.");
            ultrain_assert(intstr33[1] == "eee", "int string 33 index 1 failed.");
            ultrain_assert(intstr33[2] == "fff", "int string 33 index 2 failed.");

            let objs: Obj[] = mp.int_object_array_map.get(4);
            ultrain_assert(objs.length == 3, "objs length failed.");
            for (let i: i32 = 0; i < objs.length; i++) {
                Log.s("i = ").i(i).s(" x = ").i(objs[i].x).s(", y = ").i(objs[i].y).flush();
            }
            ultrain_assert(objs[0].x ==6 && objs[0].y == 8, "objs[0] failed.");
            ultrain_assert(objs[1].x ==18 && objs[1].y == 36, "objs[1] failed.");
            ultrain_assert(objs[2].x ==6 && objs[2].y == 8, "objs[2] failed.");
        }
    }
}

