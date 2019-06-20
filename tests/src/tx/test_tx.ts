import { Transaction as Tx } from "../../../src/transaction";
import { Contract } from "../../../src/contract";
import { Log } from "../../../src/log";
import { GmtTime } from "../../../src/time";

class TestTxContract extends Contract {

    @action
    showIdAndTime(): void {
        Log.s("My tx.id = ").s(Tx.id).flush();
        Log.s("I was published at ").i(Tx.publishTime);
        let gmtTime = new GmtTime(Tx.publishTime);
        Log.s(", it is ").s(gmtTime.toLocalTime("+08:00").toString()).s(" at Asia/Shanghai.").flush();
    }
}
