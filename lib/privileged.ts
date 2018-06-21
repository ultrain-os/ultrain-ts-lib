import "../internal/alias";
import { ISerializable } from "./ISerializable";
import { DataStream, DSHelper } from "../src/datastream";
import { PublicKey } from "../internal/types";
import { env as privileged } from "../internal/privileged.d";
import { ultrain_assert } from "../src/utils";

export class BlockchainParameters implements ISerializable {
    max_block_net_usage: u64;
    target_block_net_usage_pct: u32;
    max_transaction_net_usage: u32;
    base_per_transaction_net_usage: u32;
    net_usage_leeway: u32;
    context_free_discount_net_usage_num: u32;
    context_free_discount_net_usage_den: u32;

    max_block_cpu_usage: u32;
    target_block_cpu_usage_pct: u32;
    max_transaction_cpu_usage: u32;
    min_transaction_cpu_usage: u32;

    max_transaction_lifetime: u32;
    deferred_trx_expiration_window: u32;
    max_transaction_delay: u32;
    max_inline_action_size: u32;
    max_inline_action_depth: u16;
    max_authority_depth: u16;

    serialize(ds: DataStream): void {
        ds.write<u64>(this.max_block_net_usage);
        ds.write<u32>(this.target_block_net_usage_pct);
        ds.write<u32>(this.max_transaction_net_usage);
        ds.write<u32>(this.base_per_transaction_net_usage);
        ds.write<u32>(this.net_usage_leeway);
        ds.write<u32>(this.context_free_discount_net_usage_num);
        ds.write<u32>(this.context_free_discount_net_usage_den);

        ds.write<u32>(this.max_block_cpu_usage);
        ds.write<u32>(this.target_block_cpu_usage_pct);
        ds.write<u32>(this.max_transaction_cpu_usage);
        ds.write<u32>(this.min_transaction_cpu_usage);

        ds.write<u32>(this.max_transaction_lifetime);
        ds.write<u32>(this.deferred_trx_expiration_window);
        ds.write<u32>(this.max_transaction_delay);
        ds.write<u32>(this.max_inline_action_size);
        ds.write<u16>(this.max_inline_action_depth);
        ds.write<u16>(this.max_authority_depth);
    }

    deserialize(ds: DataStream): void {
        this.max_block_net_usage                 = ds.read<u64>();
        this.target_block_net_usage_pct          = ds.read<u32>();
        this.max_transaction_net_usage           = ds.read<u32>();
        this.base_per_transaction_net_usage      = ds.read<u32>();
        this.net_usage_leeway                    = ds.read<u32>();
        this.context_free_discount_net_usage_num = ds.read<u32>();
        this.context_free_discount_net_usage_den = ds.read<u32>();

        this.max_block_cpu_usage                 = ds.read<u32>();
        this.target_block_cpu_usage_pct          = ds.read<u32>();
        this.max_transaction_cpu_usage           = ds.read<u32>();
        this.min_transaction_cpu_usage           = ds.read<u32>();

        this.max_transaction_lifetime            = ds.read<u32>();
        this.deferred_trx_expiration_window      = ds.read<u32>();
        this.max_transaction_delay               = ds.read<u32>();
        this.max_inline_action_size              = ds.read<u32>();
        this.max_inline_action_depth             = ds.read<u16>();
        this.max_authority_depth                 = ds.read<u16>();
    }
 }

 export class ProducerKey implements ISerializable {
     producer_name: account_name;
     block_signing_key: PublicKey

     lt(a: ProducerKey, b: ProducerKey): boolean {
         return a.producer_name < b.producer_name;
     }

     serialize(ds: DataStream): void {
         ds.write<account_name>(this.producer_name);
         ds.writeVector<u8>(this.block_signing_key.data);
     }

     deserialize(ds: DataStream): void {
         this.producer_name          = ds.read<account_name>();
         this.block_signing_key.data = ds.readVector<u8>();
     }
 }

 export function setBlockchainParameters(params: BlockchainParameters): void {
    let ds = DSHelper.serializeComplex<BlockchainParameters>(params);
    privileged.set_blockchain_parameters_packed(ds.pointer(), ds.size());
 }

 export function getBlockchainParameters(params: BlockchainParameters): void {
    let len  = DataStream.measure<BlockchainParameters>(params);
    let ds   = DSHelper.getDataStreamWithLength(len);
    let size = privileged.get_blockchain_parameters_packed(ds.pointer(), ds.size());
    ultrain_assert(size <= len, "privileged.getBlockchainParameters buffer is too small.");
    params.deserialize(ds);
 }
