
import "allocator/arena";

import { DataStream } from "../../src/datastream";
import { printstr, N, ultrain_assert, RN } from "../../src/utils";
import { Log } from "../../src/log";
import { Contract, ISerializable } from "../../lib/contract";
import { env as Action } from "../../internal/action.d";

// export function apply(receiver: u64, code: u64, action: u64): void {
//     Log.s("receiver: ").s(RN(receiver)).s(" code: ").s(RN(code)).flush();
//     let sender: u64 = Action.current_sender();
//     Log.s("current sender = ").s(RN(sender)).flush();
//     var gol: HelloContract = new HelloContract(receiver);
//     gol.apply(code, action);
// }

class Ownalbe {
    owner: account_name;

    constructor() {
        this.owner = Action.current_sender();
    }

    onlyOwner(): void {
        ultrain_assert(this.owner == Action.current_sender(), "only contract owner can execute this command.");
    }

    transferOwnership(newOwner: account_name): void {
        this.onlyOwner();

        if (Action.is_account(newOwner)) {
            this.owner = newOwner;
        }
    }
}

class DragonAccessControl {
    ceoAddress: account_name;
    cfoAddress: account_name;
    apiAddress: account_name;

    paused: boolean = false;

    onlyCEO(): void {
        ultrain_assert(Action.current_sender() == this.ceoAddress, "only CEO can execute this command.");
    }

    onlyCFO(): void {
        ultrain_assert(Action.current_sender() == this.cfoAddress, "only CFO can execute this command.");
    }

    onlyAPI(): void {
        ultrain_assert(Action.current_sender() == this.apiAddress, "only API can execute this command.");
    }

    whenNotPaused(): void {
        ultrain_assert(!this.paused, "this contract is currently paused.");
    }

    whenPaused(): void {
        ultrain_assert(this.paused, "this contract is not paused now.");
    }

    @action
    setCEO(newCEO: account_name): void {
        this.onlyCEO();
        ultrain_assert(Action.is_account(newCEO), "parameter newCEO is not a valid account.");
        this.ceoAddress = newCEO;
    }

    @action
    setCFO(newCFO: account_name): void {
        this.onlyCEO();
        ultrain_assert(Action.current_sender() == this.cfoAddress, "parameter newCFO is not a valid account.");
        this.cfoAddress = newCFO;
    }

    @action
    setAPI(newAPI: account_name): void {
        this.onlyCEO();
        ultrain_assert(Action.current_sender() == this.apiAddress, "parameter newAPI is not a valid account.");
        this.apiAddress = newAPI;
    }

    @action
    pause(): void {
        this.onlyCEO();
        this.whenNotPaused();
        this.paused = true;
    }

    @action
    unpause(): void {
        this.onlyCEO();
        this.whenPaused();
        this.paused = false;
    }
}

class Dragon implements ISerializable {
    genes: u64;
    birthTime: time;

    cooldownEndBlock: u64;
    fightCooldownEndBlock: u64;

    matronId: u32;
    sireId: u32;

    siringWithId: u32;

    cooldownIndex: u16;
    fightcooldownIndex: u64;

    generation: u16;

    titles: u64;

    extend: u64;

    serialize(ds: DataStream): void {
        ds.write<u64>(this.genes);
        ds.write<time>(this.birthTime);
        ds.write<u64>(this.cooldownEndBlock);
        ds.write<u64>(this.fightCooldownEndBlock);
        ds.write<u32>(this.matronId);
        ds.write<u32>(this.sireId);
        ds.write<u32>(this.siringWithId);
        ds.write<u16>(this.cooldownIndex);
        ds.write<u64>(this.fightcooldownIndex);
        ds.write<u16>(this.generation);
        ds.write<u64>(this.titles);
        ds.write<u64>(this.extend);
    }

    deserialize(ds: DataStream): void {
        this.genes                 = ds.read<u64>();
        this.birthTime             = ds.read<time>();
        this.cooldownEndBlock      = ds.read<u64>();
        this.fightCooldownEndBlock = ds.read<u64>();
        this.matronId              = ds.read<u32>();
        this.sireId                = ds.read<u32>();
        this.siringWithId          = ds.read<u32>();
        this.cooldownIndex         = ds.read<u16>();
        this.fightcooldownIndex    = ds.read<u64>();
        this.generation            = ds.read<u16>();
        this.titles                = ds.read<u64>();
        this.extend                = ds.read<u64>();
    }

    primaryKey(): u64 { return this.genes; }
}

class DragonBase extends DragonAccessControl {

}

class DragonOwnership extends DragonBase {

}

class DragonBreeding extends DragonOwnership {

}

class ClockAuctionBase {}

class Pauseable extends Ownalbe {}

class ClockAuction extends ClockAuctionBase {

}

class SiringClockAuction extends ClockAuction {

}

export class DragonCore extends Contract {

}