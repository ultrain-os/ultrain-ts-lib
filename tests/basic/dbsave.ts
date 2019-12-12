import { Contract } from "../../src/contract";
import { NAME } from "../../src/account";
import { Log } from "../../src/log";

class Person implements Serializable {
    name: string = "";
    age: i32;

    toString(): string {
        return "name: " + this.name + ". age: " + this.age.toString();
    }
}

class ObjComponent implements Serializable {
    year: u64;
    name: string;
    company: string;
    isGood: bool;
    car: Car;
    intArray: Array<i32>;
    strArray: Array<string>;
    carArray: Array<Car>;
    personAgeMap: Map<i32, string>;
    personNameMap: Map<string, Person>;

    primaryKey(): id_type {
        return this.year;
    }

    // deserialize(ds: DataStream): void {
    //     this.year = ds.read<u64>();
    //     this.name = ds.readString();
    //     this.company = ds.readString();
    //     this.isGood = ds.read<bool>();
    //     this.car.deserialize(ds);
    //     Log.s("car finished.").flush();
    //     this.intArray = ds.readVector<i32>();
    //     Log.s("int array finished.").flush();
    //     this.strArray = ds.readStringVector();
    //     Log.s("str array finished.").flush();
    //     this.carArray = ds.readComplexVector<Car>();
    //     Log.s("car array finished.").flush();

    //     this.personAgeMap.deserialize(ds);
    //     // this.personNameMap.deserialize(ds);  
    // }

    // serialize(ds: DataStream): void {
    //     ds.write<u64>(this.year);
    //     ds.writeString(this.name);
    //     ds.writeString(this.company);
    //     ds.write<bool>(this.isGood);
    //     this.car.serialize(ds);
    //     ds.writeVector<i32>(this.intArray);
    //     ds.writeStringVector(this.strArray);
    //     ds.writeComplexVector<Car>(this.carArray);
    //     Log.s("serialize car array finished.").flush();
    //     this.personAgeMap.serialize(ds);
    //     Log.s("serialize age person finished.").flush();
    //     // this.personNameMap.serialize(ds);
    //     Log.s("serialize name person finished.").flush();
    // }

    constructor() {
        this.year = 0;
        this.name = "";
        this.company = "";
        this.isGood = true;
        this.car = new Car();
        this.intArray = new Array<i32>();
        this.strArray = new Array<string>();
        this.carArray = new Array<Car>();
        this.personAgeMap = new Map<i32, string>();
        this.personNameMap = new Map<string, Person>();
    }
}

class Car implements Serializable, Returnable{
    id: u64;
    name: string = "";

    constructor() {
        this.id = 0;
        this.name = "";
    }

    toString(): string {
        return "car name:" + this.name + ". car id:" + this.id.toString();
    }
}

class MapSave implements Serializable {
    str_str_map: Map<string, string>;
    int_int_map: Map<u32, u32>;

    // str_int_map: Map<string, u32> = new Map<string, u32>();
    // int_str_map: Map<u32, string> = new Map<u32, string>();
    // account_str_map: Map<account_name, string> = new Map<account_name, string>();
    // u64_str_map: Map<u64, string> = new Map<u64, string>();
    // int_object_map: Map<u64, Obj> = new Map<u64, Obj>();
    // object_int_map: Map<Obj, u64> = new Map<Obj, u64>();

    // int_int_array_map: ArrayMap<u8, u8> = new ArrayMap<u8, u8>();
    // int_string_array_map: ArrayMap<u8, string> = new ArrayMap<u8, string>();
    // int_object_array_map: ArrayMap<u8, Obj> = new ArrayMap<u8, Obj>();

    // deserialize(ds: DataStream): void {
    //     this.str_str_map.deserialize(ds);
    //     //this.int_int_map.deserialize(ds);
    // }
    // serialize(ds: DataStream): void {
    //     //this.int_int_map.serialize(ds);
    //     //print("map serialize end");
    //     this.str_str_map.serialize(ds);
    // }
  
    primaryKey(): id_type {
        return 0;
    }

    constructor() {
        this.str_str_map = new Map<string, string>();
        this.int_int_map = new Map<u32, u32>();
    }
}

const TABLE_NAME: string = "obj";
const TABLE_CAR: string = "car";
const TABLE_MAP: string = "map";

/**
 * Testing saveing data to table and recovering data from table.
 */
@database(Car, TABLE_CAR)
@database(MapSave, TABLE_MAP)
@database(ObjComponent, TABLE_NAME)
class TestDbSave extends Contract {

    private carDBManager: DBManager<Car> = new DBManager<Car>(NAME(TABLE_CAR), NAME(TABLE_CAR));
    private mapDBManager: DBManager<MapSave> = new DBManager<MapSave>(NAME(TABLE_MAP), NAME(TABLE_MAP));

    private lenOfArr: i32 = 10;

    @action
    testDropAll(): void {
        var aDbManager: DBManager<ObjComponent> = new DBManager<ObjComponent>(NAME(TABLE_NAME), NAME(TABLE_NAME));
        aDbManager.dropAll();
        this.carDBManager.dropAll();
        this.mapDBManager.dropAll();
    }

    @action
    testSaveCar(): Car {
        let car = new Car();
        car.name = "red car ferrari";
        car.id = 2025;
        this.carDBManager.emplace(car);
        return car;
    }

    @action
    testGetCar(): Car {
        let car = new Car();
        this.carDBManager.get(0, car);
        ultrain_assert(car.name == "red car ferrari", "testGetCar: checking name failed.");
        ultrain_assert(car.id == 2025, "testGetCar: checking id failed.");
        return car;
    }

    /**
     * Test saving data to table and multiply rows.
     */
    @action
    testDbSave(): void {
        this.saveingDb(2019);
        this.saveingDb(2020);
        this.saveingDb(2021);
    }

    saveingDb(id: u64): void {
        var component = new ObjComponent();
        var aDbManager: DBManager<ObjComponent> = new DBManager<ObjComponent>(NAME(TABLE_NAME), NAME(TABLE_NAME));
        var existing = aDbManager.exists(id);
        Log.s("saveingDb id:").i(id).s(". Existing: ").i(existing).flush();
        if (!existing) {
            component.year = id;
            component.name = "ultrian";
            component.company = "超脑";
            component.isGood = true;

            for (let index = 0; index < this.lenOfArr; index++) {
                component.intArray.push(index);
                component.strArray.push(index.toString());

                let car = new Car();
                car.id = index;
                car.name = index.toString();
                component.carArray.push(car);

                let person = new Person();
                person.age = index; 
                person.name = index.toString();
                component.personAgeMap.set(index, index.toString());
                component.personNameMap.set(index.toString(), person);
            }
            aDbManager.emplace(component);
        }
    }

    /**
     * Testing reading data for tables and checking value
     */
    @action
    testDbGet(): void {
        this.verifyDataFromTable(2019);
        this.verifyDataFromTable(2020);
        this.verifyDataFromTable(2021);
    }

    verifyDataFromTable(id: u64): void {
        var aDbManager: DBManager<ObjComponent> = new DBManager<ObjComponent>(NAME(TABLE_NAME), NAME(TABLE_NAME));
        var existing = aDbManager.exists(id);
        //Log.s("verifyDataFromTable id:").i(id).s(". Existing: ").i(existing).flush();
        if (existing) {
            let component = new ObjComponent();
            //Log.s("verifyDataFromTable get component begin.").flush();
            aDbManager.get(id, component);
            //Log.s("verifyDataFromTable get component successfully.").flush();
            ultrain_assert(component.year == id, "verifyDataFromTable: checking year failed.");
            ultrain_assert(component.name == "ultrian", "verifyDataFromTable: checking name failed.");
            ultrain_assert(component.company == "超脑", "verifyDataFromTable: checking company failed.");
            //Log.s("verifyDataFromTable compare name and company successfully.").flush();
            for (let index = 0; index < this.lenOfArr; index++) {
                ultrain_assert(component.intArray[index] == index, "verifyDataFromTable: checking intArray failed.");
                ultrain_assert(component.strArray[index] == index.toString(), "verifyDataFromTable: checking intArray failed.");
                ultrain_assert(component.carArray[index].id == <u64>index, "verifyDataFromTable: checking carArray failed.");
                ultrain_assert(component.personAgeMap.has(index), "verifyDataFromTable: checking personAgeMap failed.");
                ultrain_assert(component.personNameMap.has(index.toString()), "verifyDataFromTable: checking personNameMap failed.");
            }
        }
    }

    @action
    testSaveMap(): void {
        let mapSave = new MapSave();
        for (let index = 0; index < this.lenOfArr; index ++) {
            mapSave.str_str_map.set(index.toString(), index.toString());
            mapSave.int_int_map.set(index, index);
        }
        if (!this.mapDBManager.exists(0)) {
            //Log.s("testSaveMap: map size:").i(mapSave.str_str_map.size).flush();
            // for (let index = 0; index < mapSave.int_int_map.size; index++) {
            //     let strVal = mapSave.str_str_map.get(index.toString());
            //     Log.s("str_str_map key: ").s(index.toString()).s(". Value: ").s(strVal).flush();
            //     let intVal = mapSave.int_int_map.get(index);
            //     Log.s("int_int_map key: ").s(index.toString()).s(". Value: ").i(intVal).flush();
            // }
            this.mapDBManager.emplace(mapSave);
        } else {
            Log.s("testSaveMap: Map DbManager existing key 0.");
        }
    }

    @action
    testGetMap(): void {
        let mapSave = new MapSave();
        this.mapDBManager.get(0, mapSave);
        for (let index = 0; index < this.lenOfArr; index++) {
            let strVal = mapSave.str_str_map.get(index.toString());
            ultrain_assert(strVal == index.toString(), "testGetMap: checking str map failed.");
            let intVal = mapSave.int_int_map.get(index);
            ultrain_assert(intVal == index, "testGetMap: checking int map failed.");
        }
    }



}
