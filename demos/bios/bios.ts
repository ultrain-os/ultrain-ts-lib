/**
 * @author fanliangqin@ultrain.io
 */

import "../../src/alias";
import { Contract } from "../../src/contract";
import { env as ultrain } from "../../src/ultrain-lib";

export class Bios extends Contract {

    setpriv(account: u64, ispriv: u8): void {
        ultrain.require_auth(this.receiver);
        ultrain.set_privileged(account, ispriv);
    }

    setalimits(account: account_name, ram_bytes: u64, net_weight: u64, cpu_weight: u64): void {
        ultrain.require_auth(this.receiver);
        ultrain.set_resource_limits(account, ram_bytes, net_weight, cpu_weight);
    }

    setglimits(ram: u64, net: u64, cpu: u64): void {
        ultrain.require_auth(this.receiver);
    }

    setprods(): void {
        ultrain.require_auth(this.receiver);

        let len = ultrain.action_data_size();
        let arr = new Uint8Array(len);
        ultrain.read_action_data(<usize>arr.buffer, len);

        ultrain.set_active_producers(<usize>arr.buffer, len);
    }

    reqauth(from: u64): void {
        ultrain.require_auth(from);
    }
}