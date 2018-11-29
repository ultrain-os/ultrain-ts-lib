import { Map } from "../../../lib/map";
import { Contract } from "../../../src/contract";
import { Log } from "../../../src/log";

class TestMap extends Contract {

    @action
    public testString(map: Map<string,string>, key: string): void {
        Log.s("map size:").i(map.size()).flush();

        if (map.contains(key)) {
            Log.s("Contain key: ").s(map.get(key)).flush();
        } else {
            Log.s("Not contain key:").flush();
        }
    }
}