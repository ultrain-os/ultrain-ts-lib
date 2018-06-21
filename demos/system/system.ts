import { BlockchainParameters } from "../../lib/privileged";
import { BlockTimestamp } from "../../lib/time";
import { DataStream } from "../../src/datastream";
import { PublicKey } from "../../internal/types";
import { ISerializable } from "../../lib/ISerializable";
import { Asset, StringToSymbol } from "../../src/asset";
import { Native } from "./native";
import { DBManager } from "../../src/dbmanager";
import { ExchangeState } from "./exchangestate";


export class NameBid {
    newname: account_name;
    high_bidder: account_name;
    high_bid: i64;// negative high_bid means closed auction waiting to be claimed.
    last_bid_time: u64;

    primaryKey(): u64 { return this.newname; }
    byHighBid(): u64 { return <u64>(0 - this.high_bid); }
}

export class UltrainioGlobalState extends BlockchainParameters {
    max_ram_size                 : u64 = 64 * 1024 * 1024 * 1024;
    total_ram_bytes_reserved     : u64  = 0;
    total_ram_stake              : u64 = 0;

    last_producer_schedule_update: BlockTimestamp;
    last_pervote_bucket_fill     : u64 = 0;
    pervote_bucket               : u64 = 0;

    perblock_bucket              : u64 = 0;
    total_unpaid_blocks          : u32 = 0;
    total_activated_stake        : u64 = 0;

    thresh_activated_stake_time  : u64 = 0;
    last_producer_schedule_size  : u16 = 0;
    total_producer_vote_weight   : f64 = 0;
    last_name_close              : BlockTimestamp;

    serialize(ds: DataStream): void {
        super.serialize(ds);
        ds.write<u64>(this.max_ram_size);
        ds.write<u64>(this.total_ram_bytes_reserved);
        ds.write<u64>(this.total_ram_stake);

        this.last_producer_schedule_update.serialize(ds);
        ds.write<u64>(this.last_pervote_bucket_fill);
        ds.write<u64>(this.pervote_bucket);

        ds.write<u64>(this.perblock_bucket);
        ds.write<u32>(this.total_unpaid_blocks);
        ds.write<u64>(this.total_activated_stake);

        ds.write<u64>(this.thresh_activated_stake_time);
        ds.write<u16>(this.last_producer_schedule_size);
        ds.writeDouble(this.total_producer_vote_weight);
        this.last_name_close.serialize(ds);
    }

    deserialize(ds: DataStream): void {
        super.deserialize(ds);
        this.max_ram_size                  = ds.read<u64>();
        this.total_ram_bytes_reserved      = ds.read<u64>();
        this.total_ram_stake               = ds.read<u64>();

        this.last_producer_schedule_update.deserialize(ds);
        this.last_pervote_bucket_fill      = ds.read<u64>();
        this.pervote_bucket                = ds.read<u64>();

        this.perblock_bucket               = ds.read<u64>();
        this.total_unpaid_blocks           = ds.read<u32>();
        this.total_activated_stake         = ds.read<u64>();

        this.thresh_activated_stake_time   = ds.read<u64>();
        this.last_producer_schedule_size   = ds.read<u16>();
        this.total_producer_vote_weight    = ds.readDouble();
        this.last_name_close.deserialize(ds);
    }
}

export class ProducerInfo implements ISerializable {
    owner          : account_name;
    total_votes    : f64;
    producer_key   : PublicKey;
    is_active      : boolean;
    url            : string;
    unpaid_blocks  : u32;
    last_claim_time: u64;
    location       : u16;

    primaryKey(): u64 { return this.owner; }
    // CAUTION(liangqin): 取反怎么处理？
    byVotes(): f64 { return this.is_active ? (-this.total_votes) : this.total_votes; }
    active(): boolean { return this.is_active; }
    deactivate(): void {
        this.producer_key = new PublicKey();
        this.is_active = false;
    }

    serialize(ds: DataStream): void {
        ds.write<account_name>(this.owner);
        ds.writeDouble(this.total_votes);
        ds.writeVector<u8>(this.producer_key.data);
        ds.write<boolean>(this.is_active);
        ds.writeString(this.url);
        ds.write<u32>(this.unpaid_blocks);
        ds.write<u64>(this.last_claim_time);
        ds.write<u16>(this.location);
    }

    deserialize(ds: DataStream): void {
        this.owner             = ds.read<account_name>();
        this.total_votes       = ds.readDouble();
        this.producer_key.data = ds.readVector<u8>();
        this.is_active         = ds.read<boolean>();
        this.url               = ds.readString();
        this.unpaid_blocks     = ds.read<u32>();
        this.last_claim_time   = ds.read<u64>();
        this.location          = ds.read<u16>();
    }
}

export class VoterInfo implements ISerializable {
    owner              : account_name = 0;
    proxy              : account_name = 0;
    producers          : account_name[];
    staked             : i64 = 0;
    last_vote_weight   : f64 = 0;
    proxied_vote_weight: f64 = 0;
    is_proxy           : boolean = false;
    deferred_trx_id    : u32 = 0;
    last_unstake_time  : time = 0;
    unstaking          : Asset;

    primaryKey(): u64 { return this.owner; }

    serialize(ds: DataStream): void {
        ds.write<account_name>(this.owner);
        ds.write<account_name>(this.proxy);
        ds.writeVector<account_name>(this.producers);
        ds.write<i64>(this.staked);
        ds.writeDouble(this.last_vote_weight);
        ds.writeDouble(this.proxied_vote_weight);
        ds.write<boolean>(this.is_proxy);
        ds.write<u32>(this.deferred_trx_id);
        ds.write<time>(this.last_unstake_time);
        this.unstaking.serialize(ds);
    }

    deserialize(ds: DataStream): void {
        this.owner               = ds.read<account_name>();
        this.proxy               = ds.read<account_name>();
        this.producers           = ds.readVector<account_name>();
        this.staked              = ds.read<i64>();
        this.last_vote_weight    = ds.readDouble();
        this.proxied_vote_weight = ds.readDouble();
        this.is_proxy            = ds.read<boolean>();
        this.deferred_trx_id     = ds.read<u32>();
        this.last_unstake_time   = ds.read<time>();
        this.unstaking.deserialize(ds);
    }
}

const seconds_per_day: u32 = 24 * 3600;
const system_token_symbol: u64 = StringToSymbol(4, "SYS");

export class SystemContract extends Native {
    private _voters: DBManager<VoterInfo>;
    private _producers: DBManager<ProducerInfo>;
    private _global: DBManager<UltrainioGlobalState>;
    private _gstate: UltrainioGlobalState;
    private _rammarket: DBManager<ExchangeState>;

    constructor(s: account_name) {
        super(s);
        // this.receiver = s;
    }

    onblock(timestamp: BlockTimestamp, producer: account_name): void {

    }

    delegatebw(from: account_name, receiver: account_name, stake_net_quantity: Asset, stake_cpu_quantity: Asset, transfer: boolean): void {

    }

    undelegatebw(from: account_name, receiver: account_name, unstake_net_quantity: Asset, unstake_cpu_quantity: Asset): void {

    }

    buyram(buyer: account_name, receiver: account_name, tokens: Asset): void {

    }

    buyrambytes(buyer: account_name, receiver: account_name, bytes: u32): void {

    }

    sellram(receiver: account_name, bytes: i64): void {}

    refund( owner: account_name): void {}

    regproducer(producer: account_name, producer_key: PublicKey, url: string, location: u16): void {}

    unregprod(producer: account_name): void {}

    setram(max_ram_size: u64): void {}

    voteproducer(voter: account_name, proxy: account_name, producers: account_name[]): void {}

    regproxy(proxy: account_name, isproxy: boolean): void {}

    setparams(params: BlockchainParameters): void {}

    claimrewards(owner: account_name): void {
    }

    setpriv(account: account_name, ispriv: u8): void {}

    rmvproducer(producer: account_name): void {}

    bidname(bidder: account_name, newname: account_name, bid: Asset): void {}

    private updateElectedProducers(timestamp: BlockTimestamp): void {}

    private changebw(from: account_name, receiver: account_name, stake_net_quantity: Asset, stake_cpu_quantity: Asset, transfer: boolean): void {}

    static getDefaultParameters(): UltrainioGlobalState { return null; }

    private updateVotes(voter: account_name, proxy: account_name, producers: account_name[], voting: boolean) {}

    private propagateWeightChange(voter: VoterInfo): void {}
}