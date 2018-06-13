/**
 * @author fanliangqin@ultrain.io
 */
import "allocator/arena";
import "../../internal/alias.d";
import { MultiSig } from "./msig";
import { N } from "../../src/utils";
import { env as ultrain } from "../../src/ultrain-lib";
import { PermissionLevel } from "../../src/permission-level";

export function apply(receiver: u64, code: u64, action: u64): void {
    if (receiver == code) {
        let msig = new MultiSig(receiver);
        let ds = msig.getDataStream();

        if (action == N("propose")) {
            msig.propose();
        } else if (action == N("approve")) {
            let proposer = ds.read<u64>();
            let proposal_name = ds.read<u64>();
            let level = new PermissionLevel();
            level.deserialize(ds);

            msig.approve(proposer, proposal_name, level);
        } else if (action == N("unapprove")) {
            let proposer = ds.read<u64>();
            let proposal_name = ds.read<u64>();
            let level = new PermissionLevel();
            level.deserialize(ds);

            msig.unapprove(proposer, proposal_name, level);
        } else if (action == N("cancel")) {
            let proposer = ds.read<u64>();
            let proposal_name = ds.read<u64>();
            let canceler = ds.read<u64>();

            msig.cancel(proposer, proposal_name, canceler);
        } else if (action == N("exec")) {
            let proposer = ds.read<u64>();
            let proposal_name = ds.read<u64>();
            let executer = ds.read<u64>();

            msig.exec(proposer, proposal_name, executer);
        } else {
            ultrain.ultrainio_exit(0);
        }
    }
}