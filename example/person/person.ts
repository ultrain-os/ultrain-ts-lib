import "allocator/arena";
import { Contract } from "../../src/contract";
import { Log } from "../../src/log";
import { NAME, Account } from "../../src/account";
import { Action } from "../../src/action";

class Address implements Serializable {
    street: string;
    post: string;
}

class Person implements Serializable {
    @primaryid
    id  : u64;
    name: string;
    age: u32;
    sex: string;
    address: Address = new Address();
    @ignore
    salary: u32;

    constructor(_id: u64 = 0, _name: string = "unknown") {
        // do something
    }

    prints(): void {
        Log.s("id = ").i(this.id).s(", name = ").s(this.name).flush();
    }
}

const salestable = "tb.sales";
const marketingtable = "tb.marketing";

@database(Person, "tb.sales")
@database(Person, "tb.marketing")
class HumanResource extends Contract {

    salesdb: DBManager<Person>;
	marketingdb: DBManager<Person>;

    constructor(code: u64) {
        super(code);
        this.salesdb = new DBManager<Person>(NAME(salestable), NAME(salestable));
        this.marketingdb = new DBManager<Person>(NAME(marketingtable), NAME(marketingtable));
    }

    @action
    addSales(id: u64, name: string, age: u32, sex: string, street: string, post: string, salary: u32): void {
        let p = new Person();
        p.id = id;
        p.name = name;
        p.age = age;
        p.address.street = street;
        p.address.post = post;
        p.salary = salary;

        let existing = this.salesdb.exists(id);
        ultrain_assert(!existing, "this person has existed in db yet.");
        this.salesdb.emplace(p);
    }

    @action
    addMarketing(id: u64, name: string, age: u32, sex: string, street: string, post: string, salary: u32): void {
        let p = new Person();
        p.id = id;
        p.name = name;
        p.age = age;
        p.address.street = street;
        p.address.post = post;
        p.salary = salary;

        let existing = this.marketingdb.exists(id);
        ultrain_assert(!existing, "this person has existed in db yet.");
        this.marketingdb.emplace(p);
    }

    @action
    modify(id: u64, name: string, salary: u32): void {
        let p = new Person();
        let existing = this.salesdb.get(id, p);
        ultrain_assert(existing, "the person does not exist.");

        p.name   = name;
        p.salary = salary;

        this.salesdb.modify(p);
    }

    @action
    remove(id: u64): void {
        Log.s("start to remove: ").i(id).flush();
        let existing = this.salesdb.exists(id);
        ultrain_assert(existing, "this id is not exist.");
        this.salesdb.erase(id);
    }

    @action
    enumrate(dbname: string): void {
        let cursor: Cursor<Person>;
        if (dbname == "sales") {
            cursor = this.salesdb.cursor();
        } else if (dbname == "marketing") {
            cursor = this.marketingdb.cursor();
        } else {
            ultrain_assert(false, "unknown db name.");
        }
        Log.s("cursor.count =").i(cursor.count).flush();

        while(cursor.hasNext()) {
            let p = cursor.get();
            p.prints();
            cursor.next();
        }
    }

    @action
    drop(dbname: string): void {
        if (dbname == "sales") {
            this.salesdb.dropAll();
        } else if (dbname == "marketing") {
            this.marketingdb.dropAll();
        } else {
            ultrain_assert(false, "unknown db name.");
        }
    }


    @action
    pubkeyOf(account: account_name): void {
        let key = Account.publicKeyOf(account, 'wif');
        Log.s("public key with WIF is : " ).s(key).flush();
        key = Account.publicKeyOf(account, 'hex');
        Log.s("public key with HEX is : " ).s(key).flush();

    }
}