import { Contract, DataStreamFromCurrentAction } from "../../lib/contract";
import { DragonCore, InterestDragon } from "./dragoncore";
import { Return } from "../../src/return";
import { GenType } from "./genetype";
import { Asset } from "../../src/asset";
import { N } from "../../src/utils";
/**
 * @author fanliangqin@ultrain.io
 * @datetime 09:50:33, 06/29/2018
 * All rights reserved by ultrain.io @2018
 */
// TODO action的命名应该扩充
export class HyperDragonContract extends Contract {
    private _dragonCore: DragonCore;

    constructor(receiver: u64) {
        this._receiver = receiver;
        this._dragonCore = new DragonCore();
    }

    @action
    public getDragon(id: DragonId): void {
        let draInfo: InterestDragon = this._dragonCore.getDragon(id);
        if (draInfo != null) {
            Return(draInfo.toString());
        } else {
            Return("null");
        }
    }

    @action
    public withdrawAuctionBalances(): void {
        this._dragonCore.withdrawAuctionBalances();
    }

    @action
    public withdrawBalance(): void {
        this._dragonCore.withdrawBalance();
    }

    @action
    public updteExtend(id: DragonId, ext: u64): void {
        this._dragonCore.updateExtend(id, ext);
    }

    @action
    public setTitles(id: DragonId, matchId: u64, rank: u64): void {
        this._dragonCore.setTitles(id, matchId, rank);
    }

    @action
    public fightCooldown(id: DragonId, cooldownIndex: u64, cooldownTime: u64): void {
        this._dragonCore.fightCooldown(id, cooldownIndex, cooldownTime);
    }

    @action
    public joinMatch(id: DragonId, bet: Asset): void {
        this._dragonCore.joinMatch(id, bet);
    }

    @action
    public setSpecialDragonLimit(subType: u64, limit: u64): void {
        this._dragonCore.setSpecialDragonLimit(subType, limit);
    }

    @action
    public increaseSpecialDragon(subType: u64): void {
        this._dragonCore.increaseSpecialDragon(subType);
    }

    @action
    public createGen0Auction(gen_seg4: u64, gen_seg3: u64, gen_seg2: u64, gen_seg1: u64, extend: u64): void {
        let gen = new GenType(gen_seg4, gen_seg3, gen_seg2, gen_seg1);
        this._dragonCore.createGen0Auction(gen, extend);
    }

    @action
    public createPromoDragon(gen_seg4: u64, gen_seg3: u64, gen_seg2: u64, gen_seg1: u64,
                owner: account_name, title: u64, extend: u64): void {
        let gen = new GenType(gen_seg4, gen_seg3, gen_seg2, gen_seg1);
        this._dragonCore.createPromoDragon(gen, owner, title, extend);
    }
/*    // auction apis
    @action
    public bidOnSiringAuction(sirId: DragonId, matronId: DragonId, bet: Asset): void {
        this._dragonCore.bidOnSiringAuction(sirId, matronId, bet);
    }

    @action
    public createSiringAuction(id: DragonId, startingPrice: Asset, endingPrice: Asset, duration: u64): void {
        this._dragonCore.createSiringAuction(id, startingPrice, endingPrice, duration);
    }

    @action
    public createSaleAuction(id: DragonId, startingPrice: Asset, endingPrice: Asset, duration: u64): void {
        this._dragonCore.createSaleAuction(id, startingPrice, endingPrice, duration);
    }

    @action
    public updateGenes(id: DragonId, gen_seg4: u64, gen_seg3: u64, gen_seg2: u64, gen_seg1: u64): void {
        let gen = new GenType(gen_seg4, gen_seg3, gen_seg2, gen_seg1);
        this._dragonCore.updateGenes(id, gen);
    }

    @action
    public giveBirth(matronId: DragonId, subtype: u64): void {
        this._dragonCore.giveBirth(matronId, subtype);
    }

    @action
    public breedWithAuto(matronId: DragonId, sireId: DragonId, fee: Asset): void {
        this._dragonCore.breedWithAuto(matronId,sireId, fee);
    }

    @action
    public canBreedWith(matronId: DragonId, sireId: DragonId): void {
        let can = this._dragonCore.canBreedWith(matronId, sireId);
        Return( can ? "true" : "false");
    }

    @action
    public isPregnant(id: DragonId): void {
        let pregnant = this._dragonCore.isPregnant(id);
        Return( pregnant ? "true" : "false");
    }

    @action
    public isReadyToBreed(id: DragonId): void {
        let ready = this._dragonCore.isReadyToBreed(id);
        Return(ready ? "true" : "false");
    }

    @action
    public setAutoBirthFee(fee: Asset): void {
        this._dragonCore.setAutoBirthFee(fee);
    }

    @action
    public approveSiring(addr: account_name, sireId: DragonId): void {
        this._dragonCore.approvesiring(addr, sireId);
    }
    // UIP09 interface
    @action
    public balanceOf(owner: account_name): void {

    }

    @action
    public transfer(to: account_name, tokenId: TokenId): void {

    }

    @action
    public approve(to: account_name, tokenId: TokenId): void {

    }

    @action
    public transferFrom(from: account_name, to: account_name, tokenId: TokenId): void {

    }

    @action
    public totalSupply(): void {

    }

    @action
    public ownerOf(id: TokenId): void {

    }

    @action
    public tokensOfOwner(owner: account_name): void {

    }

    // match
    @action
    public startMatch(id: MatchId, matchType: u64, level: u64): void {
        this._dragonCore.matchInterface.startMatch(id, matchType, level);
    }

    // @action
    // public joinMatch(joinUser: account_name, id: DragonId, titles: u64,
    //         gen_seg4: u64, gen_seg3: u64, gen_seg2: u64, gen_seg1: u64): void {
    //     let gen = new GenType(gen_seg4, gen_seg3, gen_seg2, gen_seg1);
        // this._dragonCore.matchInterface.joinMatch(joinUser, id, titles, gen);
    // }
    @action
    public isCanJoin(joinUser: account_name): void {
        let can = this._dragonCore.matchInterface.isCanJoin(joinUser);
        Return(can ? "true" : "false");
    }

    @action
    public guess(betid: u64, id: DragonId, fee: Asset): void {
        this._dragonCore.matchInterface.guess(betid, id, fee);
    }

    @action
    public nextStep(nonce: u64): void {
        this._dragonCore.matchInterface.nextStep(nonce);
    }

    @action
    public getEntryFee(): void {
        let fee = this._dragonCore.matchInterface.getEntryFee();
        // TODO show fee.
        Return(fee.amount);
    }

    @action
    public setFightLimit(limit: u64): void {
        this._dragonCore.matchInterface.setFightLimit(limit);
    }

    @action
    public setAwardLimit(limit: u64): void {
        this._dragonCore.matchInterface.setAwardLimit(limit);
    }

    @action
    public setGroupLimit(limit: u64): void {
        this._dragonCore.matchInterface.setGroupLimit(limit);
    }

    @action
    public setJoinLimit(joinLimit: u64[]): void {
        this._dragonCore.matchInterface.setJoinLimit(joinLimit);
    }

    @action
    public setRegfees(regfees: Asset[]): void {
        this._dragonCore.matchInterface.setRegfees(regfees);
    }

    @action
    public setRewardMultiple(rewards: u64[]): void {
        this._dragonCore.matchInterface.setRewardMultiple(rewards);
    }

    @action
    public setGenLimit(level: u64, limits: u64[]): void {
        this._dragonCore.matchInterface.setGenLimit(level, limits);
    }

    @action
    public dissolve(matchId: MatchId): void {
        this._dragonCore.matchInterface.dissolve(matchId);
    }
*/
}