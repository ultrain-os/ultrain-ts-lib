/**
 * @author fanliangqin@ultrain.io
 */
import "../../lib/alias";
import { Bios } from "./bios";
import { Action } from "../../lib/action";
import { Log } from "../../lib/log";

export function apply(receiver: u64, code: u64, actioncode: u64): void {
    if (receiver == code) {
        let action: Action = new Action(actioncode);
        if (!action.init()) {
            Log.s("demo bios init action failed.").flush();
            return;
        }

        let bios: Bios = new Bios(receiver);
        if (action.name == "setpriv") {
            let account: account_name = action.i_params[0];
            let ispriv: boolean = action.i_params[1] == 1;
            bios.setpriv(account, ispriv);
        } else if (action.name == "setalimits") {
            let account: account_name = action.i_params[0];
            let rambytes: u64 = <u64>action.i_params[1];
            let netweight: u64 = <u64>action.i_params[2];
            let cpuweight: u64 = <u64>action.i_params[3];
            bios.setalimits(account, rambytes, netweight, cpuweight);
        } else if (action.name == "setglimits") {
            let ram: u64 = <u64>action.i_params[0];
            let net: u64 = <u64>action.i_params[1];
            let cpu: u64 = <u64>action.i_params[2];
            bios.setglimits(ram, net, cpu);
        } else if (action.name == "setprods") {
            bios.setprods(null);
        } else if (action.name == "reqauth") {
            let from: action_name = <u64>action.i_params[0];
            bios.reqauth(from);
        } else {
            Log.s("demo bios can not accept action '").s(action.name).s("', please check your command.").flush();
        }
    }
}