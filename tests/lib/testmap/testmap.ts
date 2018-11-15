import "allocator/arena";
import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";
import { Map } from "../../../lib/map";
import { ArrayMap } from "../../../lib/arraymap";

class Obj implements Serializable {
    x: u8;
    y: u8;

    constructor(x: u8 = 6, y: u8 = 8) {
        this.x = x;
        this.y = y;
    }

    // public serialize(ds: DataStream): void {
    //     ds.write<u8>(this.x);
    //     ds.write<u8>(this.y);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.x = ds.read<u8>();
    //     this.y = ds.read<u8>();
    // }

    @operator("==")
    public static __eq(lhs: Obj, rhs: Obj): boolean {
        return lhs.x == rhs.x && lhs.y == rhs.y;
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

    // string_int_map: Map<string, u8> = new Map<string, u8>();
    // string_string_map: Map<string, string> = new Map<string, string>();
    // string_object_map: Map<string, Obj> = new Map<string, Obj>();

    // string_int_array_map: ArrayMap<string, u8> = new ArrayMap<string, u8>();
    // string_string_array_map: ArrayMap<string, string> = new ArrayMap<string, string>();
    // string_object_array_map: ArrayMap<string, Obj> = new ArrayMap<string, Obj>();

    // obj_int_map: Map<Obj, u8> = new Map<Obj, u8>();
    // obj_string_map: Map<Obj, string> = new Map<Obj, string>();
    // obj_obj_map: Map<Obj, Obj> = new Map<Obj, Obj>();

    // obj_int_array_map: ArrayMap<Obj, u8> = new ArrayMap<Obj, u8>();
    // obj_string_array_map: ArrayMap<Obj, string> = new ArrayMap<Obj, string>();
    // obj_obj_array_map: ArrayMap<Obj, Obj> = new ArrayMap<Obj, Obj>();

    public serialize(ds: DataStream): void {
        this.int_int_Map.serialize(ds);
        this.int_string_map.serialize(ds);
        this.int_boolean_map.serialize(ds);
        this.int_object_map.serialize(ds);
        this.int_int_array_map.serialize(ds);
        this.int_string_array_map.serialize(ds);
        this.int_object_array_map.serialize(ds);
    }

    public deserialize(ds: DataStream): void {
        this.int_int_Map.deserialize(ds);
        this.int_string_map.deserialize(ds);
        this.int_boolean_map.deserialize(ds);
        this.int_object_map.deserialize(ds);
        this.int_int_array_map.deserialize(ds);
        this.int_string_array_map.deserialize(ds);
        this.int_object_array_map.deserialize(ds);
    }
}


@database(A, "aaaaa")
class MapTest extends Contract{

    @action
    teststore(a: u64):void{
        let mp = new A();
        mp.int_boolean_map.set(1, false);
        mp.int_boolean_map.set(11, true);

        mp.int_int_Map.set(2, 8);
        mp.int_int_Map.set(22, 88);

        mp.int_string_map.set(3, "kkk");
        mp.int_string_map.set(33, "jjj");

        mp.int_object_map.set(4, new Obj());
        mp.int_object_map.set(44, new Obj(100, 200));

        mp.int_int_array_map.set(2, [0, 1, 2, 3]);
        mp.int_int_array_map.set(22, [4, 5, 6, 7]);

        mp.int_string_array_map.set(3, ["aaa", "bbb", "ccc"]);
        mp.int_string_array_map.set(33, ["ddd", "eee", "fff"]);

        mp.int_object_array_map.set(4, [new Obj(), new Obj(18, 36), new Obj()]);


        // mp.string_int_map.set("aaa", 8);
        // mp.string_int_map.set("bbb", 10);
        // mp.string_int_array_map.set("aaa", [1, 2, 3, 4]);
        // mp.string_int_array_map.set("bbb", [5, 6, 7, 8]);

        // mp.string_string_map.set("aaa", "xxx");
        // mp.string_string_map.set("bbb", "yyy");
        // mp.string_string_array_map.set("aaa", ["mmm", "nnn", "ooo"]);
        // mp.string_string_array_map.set("bbb", ["ppp", "qqq", "rrr"]);

        // mp.string_object_map.set("aaa", new Obj(10, 20));
        // mp.string_object_map.set("bbb", new Obj());
        // mp.string_object_array_map.set("aaa", [new Obj(10, 20), new Obj(66, 88), new Obj(25, 32)]);
        // mp.string_object_array_map.set("bbb", [new Obj(20, 10), new Obj(88, 66), new Obj(32, 25)]);

        // mp.obj_int_map.set(new Obj(1, 2), 8);
        // mp.obj_int_map.set(new Obj(3, 4), 9);
        // mp.obj_int_array_map.set(new Obj(9, 9), [9, 10, 11, 12]);
        // mp.obj_int_array_map.set(new Obj(10, 10), []);

        // mp.obj_string_map.set(new Obj(1, 2), "aaa");
        // mp.obj_string_map.set(new Obj(3, 4), "bbb");
        // mp.obj_string_array_map.set(new Obj(1, 2), ["aaa", "bbb", "ccc"]);
        // mp.obj_string_array_map.set(new Obj(3, 4), ["ddd", "eee", "fff"]);

        // mp.obj_obj_map.set(new Obj(1, 2), new Obj(8, 9));
        // mp.obj_obj_map.set(new Obj(3, 4), new Obj(10, 11));
        // mp.obj_obj_array_map.set(new Obj(1, 2), [new Obj(), new Obj(3, 4)]);
        // mp.obj_obj_array_map.set(new Obj(3, 4), []);

        let db = new DBManager<A>(NAME("aaaaa"), this.receiver, NAME("aaaaa"));
        db.emplace(this.receiver, mp);
    }

    @action
    testrestore(b: u64): void {
        let db = new DBManager<A>(NAME("aaaaa"), this.receiver, NAME("aaaaa"));
        Log.s("testrestore: ").flush();
        let mp = new A();
        let existing = db.exists(0);
        Log.s("testrestore db.exist: ").flush();
        ultrain_assert(existing, "can not get stored map");
        if (existing) {
            Log.s("existing: ").i(existing).flush();
            db.get(0, mp);
            Log.s("testrestore 01: ").flush();
            ultrain_assert(mp.int_boolean_map.get(1) == false, "int boolean false map failed");
            Log.s("testrestore 02: ").flush();
            ultrain_assert(mp.int_boolean_map.get(11) == true, "int boolean true map failed");
            Log.s("testrestore 03: ").flush();
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

            // ultrain_assert(mp.string_int_map.get("aaa") == 8, "string int map aaa failed.");
            // ultrain_assert(mp.string_int_map.get("bbb") == 10, "string int map aaa failed.");
            // let strintarr = mp.string_int_array_map.get("aaa");
            // ultrain_assert(strintarr.length == 4, "string int arrary aaa length failed.");
            // for (let i: i32 = 0; i < 4; i++) {
            //     ultrain_assert(strintarr[i] == i + 1, "string int array aaa value failed.");
            // }

            // strintarr = mp.string_int_array_map.get("bbb");
            // ultrain_assert(strintarr.length == 4, "string int arrary bbb length failed.");
            // for (let i: i32 = 0; i < 4; i++) {
            //     ultrain_assert(strintarr[i] == i + 5, "string int array bbb value failed.");
            // }

            // ultrain_assert(mp.string_object_map.get("aaa") == new Obj(10, 20), "string object aaa failed");
            // ultrain_assert(mp.string_object_map.get("bbb") == new Obj(), "string object bbb failed.");

            // let strobjarr = mp.string_object_array_map.get("aaa");
            // ultrain_assert(strobjarr.length == 3, "string obj array aaa length failed.");
            // ultrain_assert(strobjarr[0] == new Obj(10, 20), "string obj array aaa 0 failed.");
            // ultrain_assert(strobjarr[1] == new Obj(66, 88), "string obj array aaa 1 failed.");
            // ultrain_assert(strobjarr[2] == new Obj(25, 32), "string obj array aaa 2 failed.");

            // strobjarr = mp.string_object_array_map.get("bbb");
            // ultrain_assert(strobjarr.length == 3, "string obj array bbb length failed.");
            // ultrain_assert(strobjarr[0] == new Obj(20, 10), "string obj array bbb 0 failed.");
            // ultrain_assert(strobjarr[1] == new Obj(88, 66), "string obj array bbb 1 failed.");
            // ultrain_assert(strobjarr[2] == new Obj(32, 25), "string obj array bbb 2 failed.");

            // ultrain_assert(mp.obj_int_map.get(new Obj(1,2)) == 8, "obj int 1/2 failed");
            // ultrain_assert(mp.obj_int_map.get(new Obj(3,4)) == 9, "obj int 3/4 failed");

            // let objintarr = mp.obj_int_array_map.get(new Obj(9, 9));
            // ultrain_assert(objintarr.length == 4, "obj int array 9, 9 length failed.");
            // ultrain_assert(objintarr[0] == 9, "obj int array 9,9 index 0 failed.");
            // ultrain_assert(objintarr[1] == 10, "obj int array 9,9 index 1 failed.");
            // ultrain_assert(objintarr[2] == 11, "obj int array 9,9 index 2 failed.");
            // ultrain_assert(objintarr[3] == 12, "obj int array 9,9 index 3 failed.");

            // objintarr = mp.obj_int_array_map.get(new Obj(10, 10));
            // ultrain_assert(objintarr.length == 0, "obj int array 10,10 length failed.");

            // ultrain_assert(mp.obj_string_map.get(new Obj(1, 2)) == "aaa", "obj string map 1,2 failed.");
            // ultrain_assert(mp.obj_string_map.get(new Obj(3, 4)) == "bbb", "obj string map 3,4 failed.");

            // let objstrarr = mp.obj_string_array_map.get(new Obj(1,2));
            // ultrain_assert(objstrarr.length == 3, "obj string array 1,2 length failed.");
            // ultrain_assert(objstrarr[0] == "aaa", "obj string array index 0 failed.");
            // ultrain_assert(objstrarr[1] == "bbb", "obj string array index 1 failed.");
            // ultrain_assert(objstrarr[2] == "ccc", "obj string array index 2 failed.");

            // objstrarr = mp.obj_string_array_map.get(new Obj(3,4));
            // ultrain_assert(objstrarr.length == 3, "obj string array 3,4 length failed.");
            // ultrain_assert(objstrarr[0] == "ddd", "obj string array 3,4 index 0 failed.");
            // ultrain_assert(objstrarr[1] == "eee", "obj string array 3,4 index 1 failed.");
            // ultrain_assert(objstrarr[2] == "fff", "obj string array 3,4 index 2 failed.");

            // ultrain_assert(mp.obj_obj_map.get(new Obj(1,2)) == new Obj(8,9), "obj obj 1,2 failed.");
            // ultrain_assert(mp.obj_obj_map.get(new Obj(3,4)) == new Obj(10,11), "obj obj 3,4 failed.");

            // let objobjarr = mp.obj_obj_array_map.get(new Obj(1,2));
            // ultrain_assert(objobjarr.length == 2, "obj obj array 1,2 length failed.");
            // ultrain_assert(objobjarr[0] == new Obj(), "obj obj array 1,2 index 0 failed.");
            // ultrain_assert(objobjarr[1] == new Obj(3,4), "obj obj array 1,2 index 1 failed.");

            // objobjarr = mp.obj_obj_array_map.get(new Obj(3,4));
            // ultrain_assert(objobjarr.length == 0, "obj obj array 3,4　length failed.");
        }
    }
}

