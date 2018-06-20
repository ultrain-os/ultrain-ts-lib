/**
 * @author fanliangqin@ultrain.io
 */
import "../../internal/alias.d";
import { Contract } from "../../lib/contract";
import { env as action } from "../../internal/action.d";
import { env as privileged } from "../../internal/privileged.d";

export class Bios extends Contract {

    setpriv(account: u64, ispriv: u8): void {
        action.require_auth(this.receiver);
        privileged.set_privileged(account, ispriv != 0);
    }

    setalimits(account: account_name, ram_bytes: u64, net_weight: u64, cpu_weight: u64): void {
        action.require_auth(this.receiver);
        privileged.set_resource_limits(account, ram_bytes, net_weight, cpu_weight);
    }

    setglimits(ram: u64, net: u64, cpu: u64): void {
        action.require_auth(this.receiver);
    }

    setprods(): void {
        action.require_auth(this.receiver);

        let len = action.action_data_size();
        let arr = new Uint8Array(len);
        action.read_action_data(<usize>arr.buffer, len);

        privileged.set_proposed_producers(<usize>arr.buffer, len);
    }

    reqauth(from: u64): void {
        action.require_auth(from);
    }
}