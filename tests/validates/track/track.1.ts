import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";

class TestTrack extends Contract {

    constructor(receiver: account_name){
        super(receiver);
    }

    @action
    public test(): void {
        Log.s("1234567890ABCDEFGHIJKLMN").flush();
    } 
} 