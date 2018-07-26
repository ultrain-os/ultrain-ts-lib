import { Bios } from "./bios";

import { Action } from "../../lib/action";
import { Log } from "../../lib/log";
import "allocator/emscripten";


// import { Log } from "contract/lib/log";


// import {Action} from "contract/lib/action";
// import { Log } from "./contract/lib/log";

/**
 * @author fanliangqin@ultrain.io
  */
  export function apply(receiver: u64, code: u64, actioncode: u64): void {
      if (receiver == code) {
              let action: Action = new Action(actioncode);
	              if (!action.init()) {
		                  Log.s("demo bios init action failed.").flush();
				              return;
					              }
						              dispatch(action,receiver);
							          }

								  }

								  function dispatch(action:Action, receiver:u64) : void{
								  let _Bios = new Bios(receiver);
								  if (action.name == 'setalimits') _Bios.setalimits(<account_name>action.i_params[0],<u64>action.i_params[1],<u64>action.i_params[2],<u64>action.i_params[3]);
												  }
