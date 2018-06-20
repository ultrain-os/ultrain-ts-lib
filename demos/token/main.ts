/**
 * @author fanliangqin@ultrain.io
 */
import "allocator/arena";
import { Token } from "./token";
import { Asset } from "../../src/asset";
import { N } from "../../src/utils";
import { env as system } from "../../internal/system.d";

export function apply(receiver: u64, code: u64, action: u64): void {
    if (receiver == code) {
        let token = new Token(receiver);
        let ds = token.getDataStream();

        if (action == N("create")) {
            let issuer = ds.read<u64>();;
            let max_supply = new Asset();
            max_supply.deserialize(ds);

            token.create(issuer, max_supply);
        } else if (action == N("issue")) {
            let to = ds.read<u64>();
            let quantity = new Asset();
            quantity.deserialize(ds);
            let memo = ds.readString();

            token.issue(to, quantity, memo);
        } else if (action == N("transfer")) {
            let from = ds.read<u64>();
            let to = ds.read<u64>();
            let quantity = new Asset();
            quantity.deserialize(ds);
            let memo = ds.readString();

            token.transfer(from, to, quantity, memo);
        } else {
            system.ultrainio_exit(0);
        }
    }
}