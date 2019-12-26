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

class MapCollector implements Serializable {
    id: u64;
    str_str_map: Map<string, string> = new Map<string, string>();
    str_int_map: Map<string, u8> = new Map<string, u8>();
    int_str_map: Map<u8, string> = new Map<u8, string>();
    account_str_map: Map<account_name, string> = new Map<account_name, string>();
    u64_str_map: Map<u64, string> = new Map<u64, string>();
    int_object_map: Map<u64, Obj> = new Map<u64, Obj>();
    object_int_map: Map<Obj, u64> = new Map<Obj, u64>();

    int_int_array_map: Map<u8, u8[]> = new Map<u8, u8[]>();
    int_string_array_map: Map<u8, string[]> = new Map<u8, string[]>();
    int_object_array_map: Map<u8, Obj[]> = new Map<u8, Obj[]>();

    primaryKey(): id_type {
        return this.id;
    }
}
const TABLE_NAME: string = "tblmap"
@database(MapCollector, TABLE_NAME)
class TestMap extends Contract {

    private aDbManager: DBManager<MapCollector> = new DBManager<MapCollector>(NAME(TABLE_NAME), NAME(TABLE_NAME));

    @action
    test() : void {
        this.testDropAll();
        this.testCreateMap(["1","2","3","4","5"]);
        this.testCreateMap(["aa","bb","cc","dd","ff"]);
        this.testWriteMapCollector();
        this.testReadMapCollector();
    }

    testDropAll(): void {
        this.aDbManager.dropAll();
    }

    public testWriteMapCollector(): void {
        this.saveingMapData(2000, "key", "value", 12);
        this.saveingMapData(2001, "value", "key", 6);
    }

    /**
     * Notice: this test case associated with the testWriteMapCollector.
     */
    testReadMapCollector(): void {
        this.recovryMapCollector(2000, "key", "value", 12);
        this.recovryMapCollector(2001, "value", "key", 6);
    }


    private saveingMapData(id: u64, key: string, value: string, intVal: i32): void {
        var mapCollector = new MapCollector();
        let u8Val = <u8>intVal;
        let u8Arr = new Array<u8>();
        let strArr = new Array<string>();
        for (let index = 0; index < intVal; ++index) {
            u8Arr.push(<u8>index);
            strArr.push(index.toString());
        }
        mapCollector.str_str_map.set(key, value);
        mapCollector.str_int_map.set(key, u8Val);
        mapCollector.int_str_map.set(u8Val, value);
        mapCollector.int_object_map.set(u8Val, new Obj());
        mapCollector.int_object_map.set(u8Val + 1, new Obj(100, 200));

        mapCollector.object_int_map.set(new Obj(100, 200), 1);
        mapCollector.object_int_map.set(new Obj(10, 20), 2);

        mapCollector.int_int_array_map.set(u8Val, u8Arr);
        mapCollector.int_int_array_map.set(u8Val +1, u8Arr);

        mapCollector.int_string_array_map.set(u8Val, strArr);
        mapCollector.int_string_array_map.set(u8Val, strArr);

        mapCollector.int_object_array_map.set(u8Val, [new Obj(), new Obj(18, 36), new Obj()]);
        mapCollector.id = id;
        Log.s("saveingMapData id: ").i(id).flush();
        this.aDbManager.emplace(mapCollector);
    }

    public recovryMapCollector(id: u64, key: string, value: string, intVal: i32): void {
        var mapCollector = new MapCollector();
        let u8Arr = new Array<u8>();
        let strArr = new Array<string>();
        for (let index = 0; index < intVal; ++index) {
            u8Arr.push(<u8>index);
            strArr.push(index.toString());
        }
        Log.s("recovryMapCollector get db: id").i(id).flush();
        let existing = this.aDbManager.get(id , mapCollector);
        Log.s("recovryMapCollector get finish: id").i(id).flush();

        ultrain_assert(existing, "Database data not existing!");

        ultrain_assert(mapCollector.str_int_map.get(key) == <u8>intVal, "recovryMapCollector: checking str_int map failed.");
        ultrain_assert(mapCollector.str_str_map.get(key) == value, "recovryMapCollector: checking str_str map failed.");
        ultrain_assert(mapCollector.int_str_map.get(<u8>intVal) == value, "recovryMapCollector: checking int_str map failed.");
        ultrain_assert(mapCollector.int_int_array_map.get(<u8>intVal).join(",") == u8Arr.join(","), "recovryMapCollector: checking int_intArr map failed.");
        ultrain_assert(mapCollector.int_string_array_map.get(<u8>intVal).join(",") == strArr.join(","), "recovryMapCollector: checking int_strArr map failed.");
    }

    public testCreateMap(arr: string[]): void {

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