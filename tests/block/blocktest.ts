import { Log } from "../../src/log";
import { Contract } from "../../src/contract";
import { Block } from "../../src/block";
import { RN } from "../../lib/name";
import { NameEx, NEX } from "../../lib/name_ex";

export class BlockTest extends Contract{

    @action
    test(a: u64):void{
        Log.s("id: ").s(Block.id).flush();
        Log.s("previousId: ").s(Block.perviousId).flush();
        Log.s("number: ").i(Block.number).flush();
        Log.s("timestamp: ").i(Block.timestamp).flush();
        Log.s("producer: ").s(RN(Block.producer)).flush();
    }
}
