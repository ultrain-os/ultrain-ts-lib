import { env as TransactionAPI } from "../internal/transaction.d";

export class Block {
    public static get height(): u32 {
        return TransactionAPI.tapos_block_num();
    }

    public static get timestamp(): u32 {
        return 0;
    }
}