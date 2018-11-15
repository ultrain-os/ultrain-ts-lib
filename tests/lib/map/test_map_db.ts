import { Map } from "../../../lib/map";
import { Contract } from "../../../src/contract";
import { NAME } from "../../../src/account";
import { Log } from "../../../src/log";

class A implements Serializable {
    arr: Array<string> = new Array<string>();
    smap: Map<string, string> = new Map<string, string>();

    primaryKey(): id_type {
        return 0;
    }
    deserialize(ds: DataStream): void {
        this.arr = ds.readStringVector();
        this.smap.deserialize(ds);
    }
    serialize(ds: DataStream): void {
        ds.writeStringVector(this.arr);
        this.smap.serialize(ds);
    }
}

@database(A, "a")
class TestMap extends Contract {

    @action
    public testInsert(key: string, value: string): void {
      var a = new A();
      let aDbManager: DBManager<A> = new DBManager<A>(NAME("a"), this.receiver, NAME("a") );
      let existing = aDbManager.exists(0);
      
      if (existing) {
          aDbManager.get(0, a);
          a.arr.push(key);
          a.arr.push(value);
          a.smap.set(key, value);
          Log.s("testInsert modify: ").i(existing).flush();
          aDbManager.modify(0, a);
      } else {
          a.arr = new Array<string>();
          a.arr.push(key);
          a.arr.push(value);
          a.smap = new Map<string, string>();
          a.smap.set(key, value);
          Log.s("testInsert emplace: ").i(existing).flush(); 
          aDbManager.emplace(this.receiver, a);
      }
    }

    @action
    public printMap(): void {
        var a = new A();
        let aDbManager: DBManager<A> = new DBManager<A>(NAME("a"), this.receiver, NAME("a"));
        let existing = aDbManager.get( 0 , a);
        Log.s("print map existing: ").i(existing).flush();
        ultrain_assert(existing, "Database data not existing!");

        if (existing) {
            let map = a.smap;
            let keys = map.keys();
            let values = map.values();
            Log.s("map size:").i(keys.length).flush();
            for (let index = 0; index < keys.length; index ++) {
                Log.s("key: ").s(keys[index]).s(". value: ").s(values[index]).flush();
            }

            let arr = a.arr;
            for (let index = 0; index < arr.length; index ++) {
                Log.s("arr value: ").s(arr[index]).flush();
            }
        }
    } 
}