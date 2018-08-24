import "allocator/arena";
import { Contract } from "../../lib/contract";
import { Action } from "../../src/action";
import { Log } from "../../src/log";
import { NEX, NameEx } from "../../src/name_ex";
import { ultrain_assert, N } from "../../src/utils";
import { ISerializable } from "../../lib/ISerializable";
import { DBManager } from "../../src/dbmanager";
import { DataStream } from "../../src/datastream";

class Person implements ISerializable {
    // name: string;
    name: string
    age: u32;
    salary: u32;

    primaryKey(): u64 { return N(this.name); }

    prints(): void {
        Log.s("name = ").s(this.name).s(", age = ").i(this.age).s(", salary = ").i(this.salary).flush();
    }
}

const tblname = "humans";
const scope = "dept.sales";

@database(Person, "humans")
// @database(SomeMoreRecordStruct, "other_table")
class PersonContract extends Contract {

    db: DBManager<Person>;

    public onInit(): void {
        this.db = new DBManager<Person>(N(tblname), this.receiver, N(scope));
    }


    public onStop(): void {

    }

    constructor(code: u64) {
        super(code);
        this._receiver = code;

        this.onInit();
    }

    @action
    add(name: string, age: u32, salary: u32): void {
        let p = new Person();
        p.name = name;
        p.age = age;
        p.salary = salary;

        let existing = this.db.exists(N(name));
        ultrain_assert(!existing, "this person has existed in db yet.");
        p.prints();
        this.db.emplace(this.receiver, p);
    }

    @action
    modify(name: string, salary: u32): void {
        let p = new Person();
        let existing = this.db.get(N(name), p);
        ultrain_assert(existing, "the person does not exist.");

        p.salary = salary;

        this.db.modify(this.receiver, p);
    }

    @action
    remove(name: string): void {
        Log.s("start to remove: ").s(name).flush();
        this.db.erase(N(name));
    }
}