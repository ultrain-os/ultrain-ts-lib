import "allocator/arena"
import { Log } from "../../lib/log";
import { CHARCODE } from "../../lib/utils";
import { Action, sendInline } from "../../lib/action";

declare function action_data_size(): u32;
declare function read_action_data(ptr: usize, len: u32): u32;

export function apply(receiver: u64, code: u64, action: u64): void {

    // let len: u32 = action_data_size();
    // let space: usize = allocate_memory(sizeof<u8>() * len);

    // let minlen: u32 = read_action_data(space, len);

    // for (let i: u32 = 0; i < minlen; ++i) {
    //     let chr: u8 = load<u8>(space);
    //     space++;

    //     Log.i(chr, 16).s("  ");
    // }
    // Log.flush();

    // free_memory(space);


    let kk: u8[] = [];
    for (let i: i32 = 0; i < 5; ++i) {
       kk.push(<u8>(CHARCODE.CHZ - i));
    }

    let act: Action = new Action(action);
    let status: boolean = act.init();

    sendInline(kk, kk.length);
}