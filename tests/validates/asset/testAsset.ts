import { Contract } from "../../../lib/contract";
import { Asset } from "../../../src/asset";
import { Action } from "../../../src/action";
import { N } from "../../../src/utils";
import { Log } from "../../../src/log";
import { NameEx, RNEX ,NEX} from "../../../src/name_ex";


class AssetContract extends Contract {
    @action
    public test1(a: i32): void {
        var as = new Asset();
        as.prints("tt");
    }
    @action 
    public test2(b: i32): void {
        var as = new Asset(100, N("nt"));
        as.prints("tt");
    }
}