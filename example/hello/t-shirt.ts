
import "allocator/arena";

import { Contract } from "../../lib/contract";

type account_name = u64;
function run(a: u64, b: u64, c: string): void {}


                /*
                 * ██╗   ██╗██╗   ████████╗██████╗  █████╗ ██╗███╗   ██╗
                 * ██║   ██║██║   ╚══██╔══╝██╔══██╗██╔══██╗██║████╗  ██║
                 * ██║   ██║██║      ██║   ██████╔╝███████║██║██╔██╗ ██║
                 * ██║   ██║██║      ██║   ██╔══██╗██╔══██║██║██║╚██╗██║
                 * ╚██████╔╝███████╗ ██║   ██║  ██║██║  ██║██║██║ ╚████║
                 *  ╚═════╝ ╚══════╝ ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝
                 */
                export class HelloContract extends Contract {
                    static apply(param: string): void {

                        let user = "ULTRAIN";
                        let action = "create a programmable society";

                        run(user, action, param);
                    }
                }



