/**
 * @author fanliangqin@ultrain.io
 */
import { Contract } from "../../src/contract";
import { Action } from "../../src/action";
import { env as privileged } from "../../internal/privileged.d";

export class Bios extends Contract {

    setpriv(account: u64, ispriv: u8): void {
        Action.requireAuth(this.receiver);
        privileged.set_privileged(account, ispriv != 0);
    }

    setalimits(account: account_name, ram_bytes: u64, net_weight: u64, cpu_weight: u64): void {
        Action.requireAuth(this.receiver);
        privileged.set_resource_limits(account, ram_bytes, net_weight, cpu_weight);
    }

    setglimits(ram: u64, net: u64, cpu: u64): void {
        Action.requireAuth(this.receiver);
    }

    setprods(): void {
        Action.requireAuth(this.receiver);

        let ds = this.getDataStream();

        privileged.set_proposed_producers(<usize>ds.buffer, ds.len);
    }

    reqauth(from: u64): void {
        Action.requireAuth(from);
    }
}