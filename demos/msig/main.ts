/**
 * @author fanliangqin@ultrain.io
 */
import "allocator/arena";
import { MultiSig } from "./msig";
import { PermissionLevel } from "../../lib/permission-level";
import { env as system } from "../../internal/system.d";
import { Action, ACTION } from "../../src/action";

export function apply(receiver: u64, code: u64, actH: u64, actL: u64): void {
    if (receiver == code) {
        let msig = new MultiSig(receiver);
        let ds = msig.getDataStream();

        let action = new Action(actH, actL);
        if (action == ACTION("propose")) {
            msig.propose();
        } else if (action == ACTION("approve")) {
            let proposer = ds.read<u64>();
            let proposal_name = ds.read<u64>();
            let level = new PermissionLevel();
            level.deserialize(ds);

            msig.approve(proposer, proposal_name, level);
        } else if (action == ACTION("unapprove")) {
            let proposer = ds.read<u64>();
            let proposal_name = ds.read<u64>();
            let level = new PermissionLevel();
            level.deserialize(ds);

            msig.unapprove(proposer, proposal_name, level);
        } else if (action == ACTION("cancel")) {
            let proposer = ds.read<u64>();
            let proposal_name = ds.read<u64>();
            let canceler = ds.read<u64>();

            msig.cancel(proposer, proposal_name, canceler);
        } else if (action == ACTION("exec")) {
            let proposer = ds.read<u64>();
            let proposal_name = ds.read<u64>();
            let executer = ds.read<u64>();

            msig.exec(proposer, proposal_name, executer);
        } else {
            system.ultrainio_exit(0);
        }
    }
}