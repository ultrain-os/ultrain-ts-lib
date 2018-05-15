/**
 * @author fanliangqin@ultrain.io
 */

import "../lib/alias";
import { public_key } from "../lib/types";

export class producer_key {
    producer_name: account_name;
    block_signing_key: public_key;
}

export class producer_schedule {
    version: u32;
    producers: producer_key[];
}