import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";
import { Log } from "../../../src/log";

class Params implements Serializable {
    @primaryid
    id: u64;
    name: string;
    // scores: Map<string, u32>;

    constructor(id_: u64 = 0, name_: string = "") {
        this.id = id_;
        this.name = name_;
        // this.scores = new Map<string, u32>();
        // this.scores.set("yuwen", 98);
        // this.scores.set("shuxue", 100);
    }

    serialize(ds: DataStream): void {
        ds.write<u64>(this.id);
        ds.writeString(this.name);
    }

    deserialize(ds: DataStream): void {
        this.id = ds.read<u64>();
        this.name = ds.readString();
    }
}

class DBManagerTest extends Contract {

    @action
    test(): void {
        let db = new DBManager<Params>(NAME("db.test"), NAME("db.test"));
        this.emplace(db);
        this.modify(db);
        this.get(db);
        // this.enumrate(db);
        this.dropAll(db);
        // this.emplace(db);
        // this.modify(db);
        // this.get(db);
        // this.enumrate(db);
    }

    emplace(db: DBManager<Params>): void {
        db.emplace(new Params(0, "p0"));
        db.emplace(new Params(1, "p1"));
        db.emplace(new Params(2, "p2"));
        db.emplace(new Params(3, "p3"));
        db.emplace(new Params(4, "p4"));
        db.emplace(new Params(5, "p5"));
        db.emplace(new Params(6, "p6"));
        db.emplace(new Params(7, "p7"));
        db.emplace(new Params(8, "p8"));
    }

    modify(db: DBManager<Params>): void {
        db.modify(new Params(5, "p5new"));
        db.modify(new Params(6, "p6new"));
    }

    get(db: DBManager<Params>): void {
        let p5 = new Params(0, "null");
        let existing = db.get(5, p5);
        ultrain_assert(existing, "DBManagerTest p5 must exist.");
        ultrain_assert(p5.name == "p5new", "DBManagerTest p5.name must be p5new");

        ultrain_assert(db.recordsCount() == 9, "DBManagerTest recordsCount must be 9.");
        db.erase(5);
        ultrain_assert(!db.exists(5), "DBManagerTest p5 must be erased.");
        ultrain_assert(db.recordsCount() == 8, "DBManagerTest recordsCount must be 8.");
        db.emplace(new Params(9, "p9"));
        db.emplace(new Params(10, "p10"));
    }

    enumrate(db: DBManager<Params>): void {
        let cursor = db.cursor();
        ultrain_assert(cursor.hasNext(), "DBManagerTest must true for cursor.hasNext()");
        while(cursor.hasNext()) {
            Log.s("X1").flush();
            let p = cursor.get();
            Log.s(p.name).flush();
            cursor.next();
            Log.s("X2").flush();
        }
    }

    dropAll(db: DBManager<Params>): void {
        db.dropAll();
    }
}