import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";
import { Block } from "../../../src/block";
import { RNAME } from "../../../src/account";

export class BlockTest extends Contract{
    @action
    test():void{
        Log.s("MUST check the result by HAND!").flush();
        Log.s("id: ").s(Block.id).flush();
        Log.s("previousId: ").s(Block.previousId).flush();
        Log.s("number: ").i(Block.number).flush();
        Log.s("timestamp: ").i(Block.timestamp).flush();
        Log.s("producer: ").s(RNAME(Block.producer)).flush();
    }
}
