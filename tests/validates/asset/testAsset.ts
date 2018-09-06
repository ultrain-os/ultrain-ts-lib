import { Contract } from "../../../src/contract";
import { Asset } from "../../../src/asset";
import { N } from "../../../lib/name";


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