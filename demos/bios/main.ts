/**
 * @author fanliangqin@ultrain.io
 */
import "allocator/arena";
import { Bios } from "./bios";
import { N, RN } from "../../src/utils";
import { env as system } from "../../internal/system.d";

export function apply(receiver: u64, code: u64, action: u64): void {
    if (receiver == code) {
        let bios = new Bios(receiver);
        let ds = bios.getDataStream();

        if (action == N("setpriv")) {
            let account = ds.read<u64>();
            let ispriv = ds.read<u8>();

            bios.setpriv(account, ispriv);
        } else if (action == N("setalimits")) {
            let account = ds.read<u64>();
            let rambytes = ds.read<u64>();
            let netweight = ds.read<u64>();
            let cpuweight = ds.read<u64>();
            bios.setalimits(account, rambytes, netweight, cpuweight);
        } else if (action == N("setglimits")) {
            let ram = ds.read<u64>();
            let net = ds.read<u64>();
            let cpu = ds.read<u64>();
            bios.setglimits(ram, net, cpu);
        } else if (action == N("setprods")) {
            bios.setprods();
        } else if (action == N("reqauth")) {
            let from = ds.read<u64>();
            bios.reqauth(from);
        } else {
            system.ultrainio_exit(0);
        }
    }
}