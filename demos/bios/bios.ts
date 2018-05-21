/**
 * @author fanliangqin@ultrain.io
 */

import "allocator/arena";
import "../../lib/alias";
import { Contract } from "../../src/contract";
import { requireAuth, action_data_size, read_action_data } from "../../lib/action";
import { setPrivileged, setResourceLimits, setActiveProducer } from "../../lib/privileged";
import { producer_schedule } from "../../src/producer_schedule";

export class Bios extends Contract {
    constructor(self: action_name) {
        // super(self);
        this.self = self;
    }

    setpriv(account: account_name, ispriv: boolean): void {
        requireAuth(this.self);
        setPrivileged(account, ispriv);
    }

    setalimits(account: account_name, ram_bytes: u64, net_weight: u64, cpu_weight: u64): void {
        requireAuth(this.self);
        setResourceLimits(account, ram_bytes, net_weight, cpu_weight);
    }

    setglimits(ram: u64, net: u64, cpu: u64): void {
        requireAuth(this.self);
    }

    setprods(sch: producer_schedule): void {
        requireAuth(this.self);
        let actlen: i32 = action_data_size();
        let dataptr: usize = allocate_memory(sizeof<u8>() * actlen);
        read_action_data(dataptr, actlen);
        setActiveProducer(dataptr, actlen);

        free_memory(dataptr);
    }

    reqauth(from: action_name): void {
        requireAuth(from);
    }
}