/**
 * @author fanliangqin@ultrain.io
 */
import "../../lib/alias";
import { Token } from "./token";
import { Action } from "../../lib/action";
import { Log } from "../../lib/log";
import { Asset, string_to_symbol } from "../../src/asset";
import { N } from "../../lib/name";

export function apply(receiver: u64, code: u64, actioncode: u64): void {
    if (receiver == code) {
        let action: Action = new Action(actioncode);
        if (!action.init()) {
            Log.s("demo token init action failed.").flush();
            return;
        }

        let token: Token = new Token(receiver);
        let symname: SymbolName = string_to_symbol(4, "UTR");
        Log.s("token.main get action: ").s(action.name).flush();
        Log.s("token.main action.i_params.length = ").i(action.i_params.length).flush();
        Log.s("token.main action.s_params.length = ").i(action.s_params.length).flush();
        if (action.name == "create") {
            let issuer: u64 = N(action.s_params[0]);
            let max_supply: Asset = new Asset(6666,  symname);
            let issuer_can_freeze: boolean = ( action.i_params[0] != 0 );
            let issuer_can_recall: boolean = ( action.i_params[1] != 0 );
            let issuer_can_whitelist: boolean = ( action.i_params[2] != 0 );

            token.create(issuer, max_supply, issuer_can_freeze, issuer_can_recall, issuer_can_whitelist);
        }  else if (action.name == "issue") {
            let to: u64 = N(action.s_params[0]);
            // here read action.s_params[1] and parse to Asset
            let quantity: Asset = new Asset(66, symname);
            let memo: string = action.s_params[2];

            token.issue(to, quantity, memo);
        } else if (action.name == "transfer") {
            let from: u64 = N(action.s_params[0]);
            let to: u64 = N(action.s_params[1]);
            // here read action.s_params[0] and parse to Asset
            let quantity: Asset = new Asset(6, symname);
            let memo: string = action.s_params[3];
            token.transfer(from, to, quantity, memo);
        } else {
            Log.s("demo token can not accept action '").s(action.name).s("', please check your command.").flush();
        }
    }
}