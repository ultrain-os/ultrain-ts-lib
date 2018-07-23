
import "allocator/arena";

import { DataStream } from "../../src/datastream";
import { N, ultrain_assert } from "../../src/utils";
import { env as Action } from "../../internal/action.d";
import { GenType } from "./genetype";
import { minutes, hours, days, seconds } from "../../lib/time";
import { SaleClockAuction, SireClockAuction } from "./saleclockauction";
import { Map } from "../../src/map";
import { GeneScience } from "./genescience";
import { env as system } from "../../internal/system.d";
import { ISerializable } from "../../lib/ISerializable";
import { env as trx } from "../../internal/transaction.d";
import { Asset, StringToSymbol } from "../../src/asset";
import { MatchCore } from "./match";
import "../../internal/alias.d";
import "./consts";
import { Titles } from "./titles";
import { emit, EventObject } from "../../lib/events";
import { UGS } from "../../internal/types";
import { HyperDragonContract, CEO, CFO, API, SaleAuctionAddress, SireAuctionAddress, MatchAddress } from "./consts";
import { queryBalance, send } from "../../src/balance";

class DragonAccessControl {
    ceoAddress: account_name = CEO;
    cfoAddress: account_name = CFO;
    apiAddress: account_name = API;

    paused: boolean = false;

    onlyOwner(): void {
        ultrain_assert(Action.current_sender() == this.ceoAddress, "only CEO can execute this command.");
    }

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

    setCEO(newCEO: account_name): void {
        this.onlyCEO();
        ultrain_assert(Action.is_account(newCEO), "parameter newCEO is not a valid account.");
        this.ceoAddress = newCEO;
    }

    setCFO(newCFO: account_name): void {
        this.onlyCEO();
        ultrain_assert(Action.current_sender() == this.cfoAddress, "parameter newCFO is not a valid account.");
        this.cfoAddress = newCFO;
    }

    setAPI(newAPI: account_name): void {
        this.onlyCEO();
        ultrain_assert(Action.current_sender() == this.apiAddress, "parameter newAPI is not a valid account.");
        this.apiAddress = newAPI;
    }

    pause(): void {
        this.onlyCEO();
        this.whenNotPaused();
        this.paused = true;
    }

    unpause(): void {
        this.onlyCEO();
        this.whenPaused();
        this.paused = false;
    }
}

class Dragon implements ISerializable {
    id                   : u64 = 0;
    genes                : GenType = new GenType(0, 0, 0, 0);
    birthTime            : time = 0;
    cooldownEndBlock     : u64 = 0;
    fightCooldownEndBlock: u64 = 0;
    matronId             : u64 = 0;
    sireId               : u64 = 0;
    siringWithId         : u64 = 0;
    cooldownIndex        : u16 = 0;
    fightcooldownIndex   : u64 = 0;
    generation           : u16 = 0;
    titles               : u64 = 0;
    extend               : u64 = 0;

    serialize(ds: DataStream): void {
        ds.write<u64>(this.id);
        this.genes.serialize(ds);
        ds.write<time>(this.birthTime);
        ds.write<u64>(this.cooldownEndBlock);
        ds.write<u64>(this.fightCooldownEndBlock);
        ds.write<u64>(this.matronId);
        ds.write<u64>(this.sireId);
        ds.write<u64>(this.siringWithId);
        ds.write<u16>(this.cooldownIndex);
        ds.write<u64>(this.fightcooldownIndex);
        ds.write<u16>(this.generation);
        ds.write<u64>(this.titles);
        ds.write<u64>(this.extend);
    }

    deserialize(ds: DataStream): void {
        this.id                    = ds.read<u64>();
        this.genes.deserialize(ds);
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

    primaryKey(): u64 { return this.id; }
}

class DragonBase extends DragonAccessControl implements ISerializable {

    dragons: Dragon[] = [];
    // a map from dragon's id to owner's address
    dragonIndexToOwner: Map<DragonId, account_name> = new Map<DragonId, account_name>();
    // a map from owner address to count of tokens that the address owns.
    ownershipTokenCount: Map<account_name, u64> = new Map<account_name, u64>();
    // a map from dragon's id to approved address which can call transferFrom().
    // Each dragon can only have one aporoved address for transfer at any time.
    // A zero value means no approval is outstanding.
    dragonIndextoApproved: Map<DragonId, account_name> = new Map<DragonId, account_name>();
    // a map from dragon's id to an address that has been approved to use this Dragon
    // for siring via breedWith().
    // Each dragon can only have one approved address for siring at any time. A zero
    // value means no approval is outstanding.
    sireAllowedToAddress: Map<DragonId, account_name> = new Map<DragonId, account_name>();

    // a map from GenType's subtype to its count.
    specialDragon: Map<u64, u64> = new Map<u64, u64>();
    // a map from GenType's subtype to its limits.
    specialDragonLimit: Map<u64, u64> = new Map<u64, u64>();

    // Limits the number of dragons the contract owner can ever create.
    promoCreatedCount: u64;
    gen0CreatedCount: u64;

    /// @notice The minimum payment required to use breedWithAuto(). This fee goes towards
    ///  the gas cost paid by whatever calls giveBirth(), and can be dynamically updated by
    ///  the COO role as the gas price changes.
    autoBirthFee: Asset = new Asset(8, UGS);

    // Keeps track of number of pregnant dragons
    pregnantDragons: u64;

    // sale auction originator and cut
    saleAuctionOriginator: account_name;
    saleAuctionCut: u64;

    // sire auction originator and cut
    sireAuctionOriginator: account_name;
    sireAuctionCut: u64;


    private serializeMap<K, V>(mp: Map<K, V>, ds: DataStream): void {
        let cnt: u64 = <u64>mp.size();
        let keys = mp.keys();
        let vals = mp.values();

        ds.write<u64>(cnt);
        for (let i: u64 = 0; i < cnt; i++) {
            ds.write<K>(keys[i]);
            ds.write<V>(vals[i]);
        }
    }

    private deserializeMap<K, V>(mp: Map<K, V>, ds: DataStream): void {
        let cnt: u64 = ds.read<u64>();

        for (let i: u64 = 0; i < cnt; i++) {
            let key = ds.read<K>();
            let val = ds.read<V>();

            mp.set(key, val);
        }
    }

    public serialize(ds: DataStream): void {
        ds.write<account_name>(this.ceoAddress);
        ds.write<account_name>(this.cfoAddress);
        ds.write<account_name>(this.apiAddress);
        ds.write<boolean>(this.paused);
        ds.writeComplexVector<Dragon>(this.dragons);
        this.serializeMap<DragonId, account_name>(this.dragonIndexToOwner, ds);
        this.serializeMap<DragonId, account_name>(this.ownershipTokenCount, ds);
        this.serializeMap<DragonId, u64>(this.dragonIndextoApproved, ds);
        this.serializeMap<DragonId, account_name>(this.sireAllowedToAddress, ds);
        this.serializeMap<u32, u32>(this.specialDragon, ds);
        this.serializeMap<u32, u32>(this.specialDragonLimit, ds);
        ds.write<u64>(this.promoCreatedCount);
        ds.write<u64>(this.gen0CreatedCount);
        ds.write<u64>(this.pregnantDragons);
        this.autoBirthFee.serialize(ds);
        ds.write<u64>(this.saleAuctionOriginator);
        ds.write<u64>(this.saleAuctionCut);
        ds.write<u64>(this.sireAuctionOriginator);
        ds.write<u64>(this.sireAuctionCut);
    }

    public deserialize(ds: DataStream): void {
        this.ceoAddress = ds.read<account_name>();
        this.cfoAddress = ds.read<account_name>();
        this.apiAddress= ds.read<account_name>();
        this.paused = ds.read<boolean>();
        this.dragons = ds.readComplexVector<Dragon>();
        this.deserializeMap<DragonId, account_name>(this.dragonIndexToOwner, ds);
        this.deserializeMap<DragonId, account_name>(this.ownershipTokenCount, ds);
        this.deserializeMap<DragonId, u64>(this.dragonIndextoApproved, ds);
        this.deserializeMap<DragonId, account_name>(this.sireAllowedToAddress, ds);
        this.deserializeMap<u32, u32>(this.specialDragon, ds);
        this.deserializeMap<u32, u32>(this.specialDragonLimit, ds);
        this.promoCreatedCount = ds.read<u64>();
        this.gen0CreatedCount = ds.read<u64>();
        this.pregnantDragons = ds.read<u64>();
        this.autoBirthFee.deserialize(ds);
        this.saleAuctionOriginator = ds.read<u64>();
        this.saleAuctionCut = ds.read<u64>();
        this.sireAuctionOriginator = ds.read<u64>();
        this.sireAuctionCut = ds.read<u64>();
    }

    public primaryKey(): u64 { return <u64>0; }

    // NEXT CONSTS does not need to store
    cooldowns: u64[] = [
        minutes(1).toSeconds(),
        minutes(2).toSeconds(),
        minutes(5).toSeconds(),
        minutes(10).toSeconds(),
        minutes(30).toSeconds(),
        hours(1).toSeconds(),
        hours(2).toSeconds(),
        hours(4).toSeconds(),
        hours(8).toSeconds(),
        hours(16).toSeconds(),
        days(1).toSeconds(),
        days(2).toSeconds(),
        days(4).toSeconds(),
        days(7).toSeconds()
    ];
    // seconds between blocks, in Ultrain, it is 10 seconds approximation.
    secondsPerBlock: u64 = seconds(10).toSeconds();

    protected containsDragon(id: u64): boolean {
        return (this.dragons.length == 0 || id >= <u64>this.dragons.length);
    }

    protected _transfer(from: account_name, to: account_name, tokenId: TokenId): void {
        let status = this.ownershipTokenCount.contains(to);
        if (status) {
            let val = this.ownershipTokenCount.get(to);
            val += 1;
            this.ownershipTokenCount.set(to, val);
        } else {
            this.ownershipTokenCount.set(to, 1);
        }

        this.dragonIndexToOwner.set(tokenId, to);

        if (Action.is_account(from)) {
            status = this.ownershipTokenCount.contains(from);
            ultrain_assert(status, "account does not own any token can transfer from.");
            let val = this.ownershipTokenCount.get(from);
            val -= 1;
            this.ownershipTokenCount.set(from, val);


            this.sireAllowedToAddress.remove(tokenId);
            this.dragonIndextoApproved.remove(tokenId);
        }
        /// @dev Transfer event as defined in current draft of ERC721. Emitted every time a dragon
        ///  ownership is assigned, including births.
        // event Transfer(from: account_name, to: account_name, tokenId: u64);
        emit("Transfer", EventObject.set<u64>("from", from).set<u64>("to", to).set<u64>("tokenId", tokenId));
    }

}

class DragonAssetControl extends DragonBase {

    /// @dev Checks if a given address is the current owner of a particular Dragon.
    /// @param _claimant the address we are validating against.
    /// @param _tokenId dragon id, only valid when > 0
    protected _owns(claimant: account_name, tokenId: TokenId): boolean {
        return (this.dragonIndexToOwner.contains(tokenId))
           && (this.dragonIndexToOwner.get(tokenId) == claimant);
    }

    /// @dev Checks if a given address currently has transferApproval for a particular Dragon.
    /// @param _claimant the address we are confirming dragon is approved for.
    /// @param _tokenId dragon id, only valid when > 0
    protected _approvedFor(claimant: account_name, tokenId: TokenId): boolean {
        return this.dragonIndextoApproved.contains(tokenId)
            && this.dragonIndextoApproved.get(tokenId) == claimant;
    }

    /// @dev Marks an address as being approved for transferFrom(), overwriting any previous
    ///  approval. Setting _approved to address(0) clears all transfer approval.
    ///  NOTE: _approve() does NOT send the Approval event. This is intentional because
    ///  _approve() and transferFrom() are used together for putting Dragons on auction, and
    ///  there is no value in spamming the log with Approval events in that case.
    protected _approve(tokenId: TokenId, approved: account_name): void {
        this.dragonIndextoApproved.set(tokenId, approved);
    }

    public transferFrom(from: account_name, to: account_name, tokenId: TokenId): void {
        ultrain_assert(Action.is_account(to), "'to' account is invalid.");
        ultrain_assert(to != HyperDragonContract, "can not transfer dragon to mima.dragon");
        ultrain_assert(this._approvedFor(Action.current_sender(), tokenId), "this asset does not belongs to message sender.");
        ultrain_assert(this._owns(from, tokenId), "'from' does not own this asset.");

        this._transfer(from, to, tokenId);
    }

    public transfer(to: account_name, tokenId: TokenId): void {
        this.whenNotPaused();
        ultrain_assert(Action.is_account(to), "'to' is invalid account name.");
        ultrain_assert(to != HyperDragonContract, "can not transfer to 'to' account");
        ultrain_assert(to != SaleAuctionAddress, "can't transfer to sale auction address.");
        ultrain_assert(to != SireAuctionAddress, "can't transfer to sire auction address.");
        ultrain_assert(this._owns(Action.current_sender(), tokenId), "you don't own this asset.");
        // event GiveDragon(from: account_name, to: account_name, tokenId: u64);
        emit("GiveDragon", EventObject.set<u64>("from", Action.current_sender()).set<u64>("to", to).set<u64>("tokenId", tokenId));

        this._transfer(Action.current_sender(), to, tokenId);
    }

    public ownerOf(tokenId: TokenId): account_name {
        if (this.dragonIndexToOwner.contains(tokenId)) {
            return this.dragonIndexToOwner.get(tokenId);
        }
        return 0;
    }

    public totalSupply(): u64 {
        return <u64>this.dragons.length - 1;
    }

    public balanceOf(owner: account_name): u64 {
        return this.ownershipTokenCount.contains(owner) ?
                this.ownershipTokenCount.get(owner) :
                0;
    }

    public approve(to: account_name, tokenId: TokenId): void {
        this.whenNotPaused();
        ultrain_assert(this._owns(Action.current_sender(), tokenId), "you do not own this asset.");
        this._approve(tokenId, to);

        // event Approval(address owner, address approved, uint256 tokenId);
        emit("Approval", EventObject.set<u64>("owner", Action.current_sender())
            .set<u64>("to", to).set<u64>("tokenId", tokenId));
    }

    public tokensOfOwner(owner: account_name): u64[] {
        let tokenCount = this.balanceOf(owner);
        let result: account_name[] = [];
        if (tokenCount != 0) {
            let totalDragon = this.totalSupply();
            for (let i: i32 = 1; i <= <i32>totalDragon; i++) {
                if (this.dragonIndexToOwner.get(i) == owner) {
                    result.push(i);
                }
            }
        }
        return result;
    }
}

class DragonBreeding extends DragonAssetControl {

    protected _isReadyToBreed(dra: Dragon): boolean {
        // In addition to checking the cooldownEndBlock, we also need to check to see if
        // the dragon has a pending birth; there can be some period of time between the end
        // of the pregnacy timer and the birth event.
        return dra.siringWithId == 0
            && (dra.cooldownEndBlock <= <u64>trx.tapos_block_num());
    }

    /// @dev Check if a sire has authorized breeding with this matron. True if both sire
    ///  and matron have the same owner, or if the sire has given siring permission to
    ///  the matron's owner (via approveSiring()).
    protected _isSiringPermitted(sireId: DragonId, matronId: DragonId): boolean {
        let matronOwner = this.dragonIndexToOwner.get(matronId);
        let sireOwner = this.dragonIndexToOwner.get(sireId);

        // Siring is okay if they have same owner, or if the matron's owner was given
        // permission to breed with this sire.
        return matronOwner == sireOwner
            && this.sireAllowedToAddress.get(sireId) == matronOwner;
    }

    /// @dev Set the cooldownEndTime for the given Dragon, based on its current cooldownIndex.
    ///  Also increments the cooldownIndex (unless it has hit the cap).
    /// @param _dragon A reference to the Dragon in storage which needs its timer started.
    protected _triggerCooldown(dragon: Dragon): void {
        dragon.cooldownEndBlock = this.cooldowns[dragon.cooldownIndex] / this.secondsPerBlock;

        if (dragon.cooldownIndex < 13) {
            dragon.cooldownIndex += 1;
        }
    }

    /// @notice Grants approval to another user to sire with one of your Dragons.
    /// @param _addr The address that will be able to sire with your Dragon. Set to
    ///  address(0) to clear all siring approvals for this Dragon.
    /// @param _sireId A Dragon that you own that _addr will now be able to sire with.
    public approvesiring(addr: account_name, sireId: DragonId): void {
        ultrain_assert(this._owns(Action.current_sender(), sireId), "the sire dragon does not belongs to trx sender.");
        this.sireAllowedToAddress.set(sireId, addr);
    }

    /// @dev Updates the minimum payment required for calling giveBirthAuto(). Can only
    ///  be called by the COO address. (This fee is used to offset the gas cost incurred
    ///  by the autobirth daemon).
    public setAutoBirthFee(val: Asset): void {
        this.onlyCEO();
        this.autoBirthFee = val;
        // event setBirthFee(val: Asset);
        emit("SetBirthFee", EventObject.set<u64>("fee", val.amount));
    }

    /// @dev Checks to see if a given Dragon is pregnant and (if so) if the gestation
    ///  period has passed.
    private _isReadyToGiveBirth(matron: Dragon): boolean {
        return matron.siringWithId != 0
            && matron.cooldownEndBlock <=trx.tapos_block_num();
    }

    /// @notice Checks that a given dragon is able to breed (i.e. it is not pregnant or
    ///  in the middle of a siring cooldown).
    /// @param _dragonId reference the id of the dragon, any user can inquire about it
    public isReadyToBreed(dragonId: DragonId): boolean {
        ultrain_assert(dragonId > 0, "dragon id is invalid.");
        let dra: Dragon = this.dragons[<i32>dragonId];
        return this._isReadyToBreed(dra);
    }

    /// @dev Checks whether a dragon is currently pregnant.
    /// @param _dragonId reference the id of the dragon, any user can inquire about it
    public isPregnant(dragonId: DragonId): boolean {
        ultrain_assert(dragonId > 0, "dragon is is invalid.");
        return this.dragons[<i32>dragonId].siringWithId != 0;
    }

    /// @dev Internal check to see if a given sire and matron are a valid mating pair. DOES NOT
    ///  check ownership permissions (that is up to the caller).
    /// @param _matron A reference to the Dragon struct of the potential matron.
    /// @param _matronId The matron's ID.
    /// @param _sire A reference to the Dragon struct of the potential sire.
    /// @param _sireId The sire's ID
    protected _isValidMatingPair(matron: Dragon, matronId: DragonId, sire: Dragon, sireId: DragonId): boolean {
        if (matronId == sireId) return false;

        if (matron.matronId == sireId || matron.sireId == sireId) return false;

        if (sire.matronId == matronId || sire.sireId == matronId) return false;

        if (sire.matronId == 0 || matron.matronId == 0) return true;

        if (sire.matronId == matron.matronId || sire.matronId == matron.sireId) return false;

        if (sire.sireId == matron.matronId || sire.sireId == matron.sireId) return false;

        return true;
    }

    /// @dev Internal check to see if a given sire and matron are a valid mating pair for
    ///  breeding via auction (i.e. skips ownership and siring approval checks).
    protected _canBreedWithViaAuction(matronId: DragonId, sireId: DragonId): boolean {
        let matron = this.dragons[<i32>matronId];
        let sire = this.dragons[<i32>sireId];
        return this._isValidMatingPair(matron, matronId, sire, sireId);
    }

    /// @notice Checks to see if two dragons can breed together, including checks for
    ///  ownership and siring approvals. Does NOT check that both dragons are ready for
    ///  breeding (i.e. breedWith could still fail until the cooldowns are finished).
    ///  TODO: Shouldn't this check pregnancy and cooldowns?!?
    /// @param _matronId The ID of the proposed matron.
    /// @param _sireId The ID of the proposed sire.
    public canBreedWith(matronId: DragonId, sireId: DragonId): boolean {
        ultrain_assert(matronId > 0, "matron id invalid.");
        ultrain_assert(sireId > 0, "sire id is invalid.");
        let matron = this.dragons[<i32>matronId];
        let sire = this.dragons[<i32>sireId];

        return this._isValidMatingPair(matron, matronId, sire, sireId)
            && this._isSiringPermitted(sireId, matronId);
    }

    /// @dev Internal utility function to initiate breeding, assumes that all breeding
    ///  requirements have been checked.
    protected _breedWith(matronId: DragonId, sireId: DragonId): void {
        let sire = this.dragons[<i32>sireId];
        let matron = this.dragons[<i32>matronId];

        matron.siringWithId = sireId;

        this._triggerCooldown(sire);
        this._triggerCooldown(matron);

        this.sireAllowedToAddress.remove(matronId);
        this.sireAllowedToAddress.remove(sireId);

        this.pregnantDragons += 1;

        /// @dev The Pregnant event is fired when two dragons successfully breed and the pregnancy
        ///  timer begins for the matron.
        // event Pregnant(owner: account_name, matronId: DragonId, sireId: DragonId, cooldownEndBlock: u64);
        emit("Pregnant", EventObject.set<u64>("owner", this.dragonIndexToOwner.get(matronId)).set<u64>("matronId", matronId)
            .set<u64>("sireId", sireId).set<u64>("cooldownEndBlock", matron.cooldownEndBlock));
    }

    /// @notice Breed a Dragon you own (as matron) with a sire that you own, or for which you
    ///  have previously been given Siring approval. Will either make your dragon pregnant, or will
    ///  fail entirely. Requires a pre-payment of the fee given out to the first caller of giveBirth()
    /// @param _matronId The ID of the Dragon acting as matron (will end up pregnant if successful)
    /// @param _sireId The ID of the Dragon acting as sire (will begin its siring cooldown if successful)
    public breedWithAuto(matronId: DragonId, sireId: DragonId, fee: Asset): void {
        this.whenNotPaused();
        ultrain_assert(fee >=this.autoBirthFee, "payer is lower than autoBirthFee.");
        ultrain_assert(this._owns(Action.current_sender(), matronId), "thx sender does not own the matron.");
        ultrain_assert(this._isSiringPermitted(sireId, matronId), "matronId and sireId is not premitted to breed.");

        let matron = this.dragons[<i32>matronId];
        ultrain_assert(this._isReadyToBreed(matron), "matron is not ready to breed.");

        let sire = this.dragons[<i32>sireId];
        ultrain_assert(this._isReadyToBreed(sire), "sire is not ready to breed.");

        ultrain_assert(this._isValidMatingPair(matron, matronId, sire, sireId), "matron and sire can not mating.");

        this._breedWith(matronId, sireId);
    }

    public updateGenes(dragonId: DragonId, genes: GenType): void {
        let dra = this.dragons[<i32>dragonId];
        dra.genes = genes;
        // event UpdateGenes(dragonId: DragonId, genes: GenType);
        emit("UpdateGenes", EventObject.set<u64>("dragonId", dragonId).set<string>("genes", genes.toString()));
    }
}

export class DragonAuction extends DragonBreeding {

    public setSaleAuctionAddress(_address: account_name, cut: u64): void {
        this.onlyCEO();
        this.saleAuctionOriginator = _address;
        this.saleAuctionCut = cut;
    }

    public setSiringAuctionAddress(_address: account_name, cut: u64): void {
        this.onlyCEO();
        this.sireAuctionOriginator = _address;
        this.sireAuctionCut = cut;
    }
}

// Limits the number of dragons the contract owner can ever create.
let PROMO_CREATION_LIMIT: u64 = 15000;
let GEN0_CREATION_LIMIT: u64  = 45000;

let GEN0_STARTING_PRICE: Asset = new Asset(80, UGS);
let GEN0_AUCTION_DURATION: u64 = days(1).toSeconds();

class DragonMinting extends DragonAuction {

    public increaseSpecialDragon(_subType: u64): void {
        let exists = this.specialDragon.contains(_subType);
        let cnt: u64 = 0;
        if (exists) {
            cnt = this.specialDragon.get(_subType);
        }
        this.specialDragon.set(_subType, cnt + 1);
    }

    public setSpecialDragonLimit(_subType: u64, _limit: u64): void {
        this.onlyCEO();
        this.specialDragonLimit.set(_subType, _limit);
    }
}

class DragonMatch extends DragonMinting {

    protected _isNotCooldownIng(_dra: Dragon): boolean {
        return (_dra.cooldownEndBlock <= <u64>trx.tapos_block_num())
            && (_dra.fightCooldownEndBlock <= <u64>trx.tapos_block_num());
    }

    public fightCooldown(dragonId: DragonId, cooldownIndex: u64, cooldowntime: u64): void {
        if (this.containsDragon(dragonId)) {
            let dra = this.dragons[<i32>dragonId];
            dra.fightCooldownEndBlock = cooldowntime / this.secondsPerBlock + trx.tapos_block_num();
            dra.fightcooldownIndex =  cooldownIndex;

            // event FightCooldown(dragonId: DragonId, cooldownIndex: u64, cooldownTime: u64, fightCooldownEndBlock: u64);
            emit("FightCooldown", EventObject.set<u64>("dragonId", dragonId).set<u64>("cooldownIndex", cooldownIndex)
                .set<u64>("cooldownTime", cooldowntime).set<u64>("fightCooldownEndblock", dra.fightCooldownEndBlock));
        }
    }

    public setTitles(dragonId: DragonId, matchId: u64, rank: u64): void {
        let has = this.containsDragon(dragonId);
        if (has) {
            let dra = this.dragons[<i32>dragonId];
            let tit = dra.titles;
            let t = new Titles(tit);

            t.count += 1;
            t.setAMatch(Titles.compositeMatchIdAndRank(matchId, rank));
            dra.titles = t.title;

            // event UpdateTitle(dragonId: DragonId, titles: u64);
            emit("UpdateTitle", EventObject.set<u64>("dragonId", dragonId).set<u64>("titles", dra.titles));
        }
    }
}

class DragonExtend extends DragonMatch {

    public updateExtend(dragonId: DragonId, extend: u64): void {
        let id = <i32>dragonId;
        let dra = this.dragons[id];
        dra.extend = extend;
        // event UpdateExtend(dragonId: DragonId, extend: u64);
        emit("UpdateExtend", EventObject.set<u64>("dragonId", dragonId).set<u64>("extend", extend));
    }
}

export class InterestDragon {
    isReady: boolean;
    cooldownIndex: u64;
    nextActionAt: u64;
    siringWithId: DragonId;
    birthTime: u64;
    matronId: DragonId;
    sireId: DragonId;
    generation: u64;
    genes: GenType;
    titles: u64;
    fightCooldownEndblock: u64;
    fightCooldownIndex: u64;
    extend: u64;

    public toString(): string {
        return "";
    }
}

export class DragonCore extends DragonExtend {
    constructor() {
        // super();
    }

    public getDragon(id: DragonId): InterestDragon {


        let has = this.containsDragon(id);
        if (!has) return null;

        let dra = this.dragons[<i32>id];

        let ret = new InterestDragon();

        ret.isReady               = (dra.cooldownEndBlock <= <u64>trx.tapos_block_num());
        ret.cooldownIndex         = dra.cooldownIndex;
        ret.nextActionAt          = dra.cooldownEndBlock;
        ret.siringWithId          = dra.siringWithId;
        ret.birthTime             = dra.birthTime;
        ret.matronId              = dra.matronId;
        ret.sireId                = dra.sireId;
        ret.generation            = dra.generation;
        ret.genes                 = dra.genes;
        ret.titles                = dra.titles;
        ret.fightCooldownEndblock = dra.fightCooldownEndBlock;
        ret.fightCooldownIndex    = dra.fightcooldownIndex;
        ret.extend                = dra.extend;

        return ret;
    }

    public withdrawAuctionBalances(): void {
        this.onlyCEO();
        let saleAuction = new SaleClockAuction(this, this.saleAuctionOriginator, this.saleAuctionCut)
        saleAuction.withdrawBalance();
        let siringAuction = new SireClockAuction(this, this.sireAuctionOriginator, this.sireAuctionCut);
        siringAuction.withdrawBalance();

        let matchInterface = new MatchCore(this);
        matchInterface.withdrawBalance();
    }

    public withdrawBalance(): void {
        this.onlyCFO();

        let balance = queryBalance(HyperDragonContract);

        let subtractFees = new Asset();
        subtractFees.setAmount((this.pregnantDragons + 1) * this.autoBirthFee.getAmount());
        subtractFees.setSymbol(this.autoBirthFee.getSymbol());

        if (balance > subtractFees) {
            let fee: u64 = balance.amount - subtractFees.amount;
            subtractFees.setAmount(fee);
            send(HyperDragonContract, CFO, subtractFees, "dragoncore withdraw balance.");
        }
    }


    public createSaleAuction(dragonId: DragonId, startingPrice: Asset, endingPrice: Asset, duration: u64): void {
        this.whenNotPaused();
        let seller = Action.current_sender();
        // Auction contract checks input sizes
        // If dragon is already on any auction, this will throw
        // because it will be owned by the auction contract.
        ultrain_assert(this._owns(seller, dragonId), "the dragon id does not belong to trx sender.");
        // Ensure the dragon is not pregnant to prevent the auction
        // contract accidentally receiving ownership of the child.
        // NOTE: the dragon IS allowed to be in a cooldown.
        ultrain_assert(!this.isPregnant(dragonId), "this dragon is pregnent.");
        this._approve(dragonId, SaleAuctionAddress);
        // Sale auction throws if inputs are invalid and clears
        // transfer and sire approval after escrowing the dragon.
        let saleAuction = new SaleClockAuction(this, this.saleAuctionOriginator, this.saleAuctionCut);
        saleAuction.createAuction(dragonId, startingPrice, endingPrice, duration, seller);
    }

    public createSiringAuction(dragonId: DragonId, startingPrice: Asset, endingPrice: Asset, duration: u64): void {
        this.whenNotPaused();

        let seller = Action.current_sender();
        ultrain_assert(this._owns(seller, dragonId), "the dragon does not belong to trx sender.");
        ultrain_assert(this.isReadyToBreed(dragonId), "the dragon is not ready to breed.");
        this._approve(dragonId, SireAuctionAddress);
        let siringAuction = new SireClockAuction(this, this.sireAuctionOriginator, this.sireAuctionCut);
        siringAuction.createAuction(dragonId, startingPrice, endingPrice, duration, seller);
    }

    protected _computeNextGen0Price(saleAuction: SaleClockAuction): Asset {
        let avePrice = saleAuction.averageGen0SalePrice();

        let amount = avePrice.getAmount();

        let nextAmount = amount + amount / 2;
        if (nextAmount < GEN0_STARTING_PRICE.getAmount()) {
            nextAmount = GEN0_STARTING_PRICE.getAmount();
        }

        let nextPrice = avePrice.clone();
        nextPrice.setAmount(nextAmount);

        return nextPrice;
    }

    /// @dev Completes a siring auction by bidding.
    ///  Immediately breeds the winning matron with the sire on auction.
    /// @param _sireId - ID of the sire on auction.
    /// @param _matronId - ID of the matron owned by the bidder.
    public bidOnSiringAuction(sireId: DragonId, matronId: DragonId, value: Asset): void {
        this.whenNotPaused();
        let sender = Action.current_sender();
        ultrain_assert(this._owns(sender, matronId), "the matron dragon does not belong to trx sender.");
        ultrain_assert(this.isReadyToBreed(matronId), "the matron dragon is not ready to breed.");
        ultrain_assert(this._canBreedWithViaAuction(matronId, sireId), "the matron can not breed with the sire dragons via auction.");

        let siringAuction = new SireClockAuction(this, this.sireAuctionOriginator, this.sireAuctionCut);
        let currentPrice = siringAuction.getcurrentPrice(sireId);
        let lowestPrice = currentPrice.add(this.autoBirthFee);
        ultrain_assert(value >= lowestPrice, "bid value is too low.");

        // FIXME(liangqin): the sireId is same with tokenId????
        let bidPrice = value.sub(this.autoBirthFee);
        siringAuction.bid(sireId, bidPrice);
        this._breedWith(matronId, sireId);
    }

     /// @notice Have a pregnant Dragon give birth!
    /// @param _matronId A Dragon ready to give birth.
    /// @return The Dragon ID of the new dragon.
    /// @dev Looks at a given Dragon and, if pregnant and if the gestation period has passed,
    ///  combines the genes of the two parents to create a new dragon. The new Dragon is assigned
    ///  to the current owner of the matron. Upon successful completion, both the matron and the
    ///  new dragon will be ready to breed again. Note that anyone can call this function (if they
    ///  are willing to pay the gas!), but the new dragon always goes to the mother's owner.
    public giveBirth(matronId: DragonId, tid: u64): DragonId {
        this.onlyAPI();
        let matron = this.dragons[<i32>matronId];

        ultrain_assert(matron.birthTime != 0, "matron is not valid, its birth time is 0.");

        let sireId = matron.siringWithId;
        let sire = this.dragons[<i32>sireId];
        let parentGen = matron.generation;
        if (sire.generation > matron.generation) {
            parentGen = sire.generation;
        }

        let genScience = new GeneScience(this);
        let childGenes: GenType = genScience.mixGenes(matron.genes, matron.generation,
                sire.genes, sire.generation, tid);
        let childExtend: u64 = genScience.mixExtend(matron.extend, matron.generation, sire.extend, sire.generation);

        let owner: account_name = this.dragonIndexToOwner.get(matronId);
        let dragonId: DragonId = this._createDragon(matronId, matron.siringWithId, parentGen + 1, childGenes, 0, owner, childExtend);
        // Clear the reference to sire from the matron (REQUIRED! Having siringWithId
        // set is what marks a matron as being pregnant.)
        matron.siringWithId = 0;

        this.pregnantDragons -= 1;

        let sender = Action.current_sender();
        send(HyperDragonContract, sender, this.autoBirthFee, "give birth fee.");

        return dragonId;
    }


    public createGen0Auction(_genes: GenType, _extend: u64): void {
        ultrain_assert(this.gen0CreatedCount < GEN0_CREATION_LIMIT, "too many gen0 auctions created.");
        let genScience = new GeneScience(this);
        let genes = genScience.gen0Genes(_genes);
        let owner = HyperDragonContract;
        let dragonId = this._createDragon(0, 0, 0, genes, 0, owner, _extend);

        this._approve(dragonId, owner);
        let saleAuction = new SaleClockAuction(this, this.saleAuctionOriginator, this.saleAuctionCut)
        saleAuction.createAuction(
                dragonId,
                this._computeNextGen0Price(saleAuction),
                new Asset(),
                GEN0_AUCTION_DURATION,
                owner
        );

        this.gen0CreatedCount ++;
    }

    public confirmGene(gen: GenType): GenType {
        let genScience = new GeneScience(this);
        return genScience.confirmGene(gen);
    }

    public createPromoDragon(_genes: GenType, _owner: account_name, _title: u64, _extend: u64): void {
        // this.onlyAPI();
        let dragonOwner = _owner;
        if (dragonOwner == 0) {
            dragonOwner = this.cfoAddress;
        }

        ultrain_assert(this.promoCreatedCount < PROMO_CREATION_LIMIT, "too many dragons created.");
        this.promoCreatedCount++;

        this._createDragon(0, 0, 0, _genes, _title, dragonOwner, _extend);
    }


    protected _createDragon(mathronId: DragonId, sireId: DragonId, generation: u16,
        genes: GenType, titles: u64, owner: account_name, extend: u64): u64 {
        let cooldownIndex = generation / 2;

        if (mathronId != 0) {
            if (cooldownIndex > 7) cooldownIndex = 7;
        } else {
            if (cooldownIndex > 13) cooldownIndex = 13;
        }

        if (Action.is_account(owner)) {
            genes = this.confirmGene(genes);
        }

        let dragon = new Dragon();
        dragon.genes = genes;
        dragon.birthTime = system.now();
        dragon.cooldownEndBlock = 0;
        dragon.fightCooldownEndBlock = 0;
        dragon.matronId = mathronId;
        dragon.sireId = sireId;
        dragon.siringWithId = 0;
        dragon.cooldownIndex = cooldownIndex;
        dragon.fightcooldownIndex = 0;
        dragon.generation = generation;
        dragon.titles = titles;
        dragon.extend = extend;

        let newDragonId = this.dragons.push(dragon) - 1;
        /// @dev The Birth event is fired whenever a new dragon comes into existence. This obviously
        ///  includes any time a dragon is created through the giveBirth method, but it is also called
        ///  when a new gen0 dragon is created.
        // event Birth( owner: account_name, dragonId: u64, matronId: u64, sireId: u64, genes: GenType);
        emit("Birth", EventObject.set<u64>("owner", owner).set<u64>("dragonId", newDragonId).set<u64>("matronId", mathronId)
            .set<u64>("sireId", sireId).set<string>("gen", genes.toString()));

        this._transfer(0, owner, newDragonId);

        return newDragonId;
    }

    public joinMatch(dragonId: DragonId, value: Asset): void {
        this.whenNotPaused();
        if (this.containsDragon(dragonId)) {
            let sender = Action.current_sender();
            ultrain_assert(this._owns(sender, dragonId), "the dragon does not belong to the sender.");

            let dra = this.dragons[<i32>dragonId];
            let count = (dra.titles & 0xFF);

            let matchInterface = new MatchCore(this);
            ultrain_assert(count < 10, "the dragon joins too many matches.");
            ultrain_assert(!this.isPregnant(dragonId), "the dragon is pregnant.");
            ultrain_assert(this._isNotCooldownIng(dra), "the dragon is still cooling down.");
            ultrain_assert(matchInterface.isCanJoin(sender), "the sender can not join the match.");

            this._approve(dragonId, MatchAddress);

            matchInterface.joinMatch(sender, dragonId, dra.genes, dra.titles, value);
        }
    }

    public startMatch(id: MatchId, matchType: u64, level: u64): void {
        this.whenNotPaused();
        let matchInterface = new MatchCore(this);
        matchInterface.startMatch(id, matchType, level);
    }

    public guess(betid: u64, id: DragonId, fee: Asset): void {
        this.whenNotPaused();
        let matchInterface = new MatchCore(this);
        matchInterface.guess(betid, id, fee);
    }

    public isCanJoin(joinUser: account_name): boolean {
        let matchInterface = new MatchCore(this);
        return matchInterface.isCanJoin(joinUser);
    }

    public nextStep(nonce: u64): void {
        this.whenNotPaused();
        let matchInterface = new MatchCore(this);
        matchInterface.nextStep(nonce);
    }

    public getEntryFee(): Asset {
        let matchInterface = new MatchCore(this);
        return matchInterface.getEntryFee();
    }

    public setFightLimit(limit: u64): void {
        this.onlyOwner();
        let matchInterface = new MatchCore(this);
        matchInterface.setFightLimit(limit);
    }

    public setAwardLimit(limit: u64): void {
        this.onlyOwner();
        let matchInterface = new MatchCore(this);
        matchInterface.setAwardLimit(limit);
    }

    public setGroupLimit(limit: u64): void {
        this.onlyOwner();
        let matchInterface = new MatchCore(this);
        matchInterface.setGroupLimit(limit);
    }

    public setJoinLimit(joinLimit: u64[]): void {
        this.onlyOwner();
        let matchInterface = new MatchCore(this);
        matchInterface.setJoinLimit(joinLimit);
    }

    public setRegfees(regfees: Asset[]): void {
        this.onlyOwner();
        let matchInterface = new MatchCore(this);
        matchInterface.setRegfees(regfees);
    }

    public setRewardMultiple(rewards: u64[]): void {
        this.onlyOwner();
        let matchInterface = new MatchCore(this);
        matchInterface.setRewardMultiple(rewards);
    }

    public setGenLimit(level: u64, limits: u64[]): void {
        this.onlyOwner();
        let matchInterface = new MatchCore(this);
        matchInterface.setGenLimit(level, limits);
    }

    public dissolve(matchId: MatchId): void {
        let matchInterface = new MatchCore(this);
        matchInterface.dissolve(matchId);
    }
}