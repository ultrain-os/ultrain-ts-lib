/**
 * @author fanliangqin@ultrain.io
 * @datetime 13:57:38, 06/28/2018
 * All rights reserved by ultrain.io @2018
 */

import { Action } from "../../src/action";
import { Asset } from "../../src/asset";
import { DragonCore, DragonAuction } from "./dragoncore";
import { ultrain_assert, intToString } from "../../src/utils";
import { Map } from "../../lib/map";
import { emit, EventObject } from "../../src/events";
import { HyperDragonContract, SireAuctionAddress } from "./consts";
import { now } from "../../src/time";
import { Log } from "../../src/log";
import { SYS } from "../../src/asset";
import { DBManager } from "../../src/dbmanager";
import { NAME, ACCOUNT, RNAME, Account } from "../../src/account";

class Auction implements Serializable {
    // current owner of NFT
    seller: account_name;
    // price in UGS at beginning of auction
    startingPrice: Asset;
    // price in UGS at end of auction
    endingPrice: Asset;
    // Duratino (in seconds) of auction.
    duration: u64;
    // Time when auction started
    // NOTE: 0 if this auction has been concluded.
    startedAt: u64;

    // public serialize(ds: DataStream): void {
    //     ds.write<account_name>(this.seller);
    //     this.startingPrice.serialize(ds);
    //     this.endingPrice.serialize(ds);
    //     ds.write<u64>(this.duration);
    //     ds.write<u64>(this.startedAt);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.seller = ds.read<account_name>();
    //     this.startingPrice.deserialize(ds);
    //     this.endingPrice.deserialize(ds);
    //     this.duration = ds.read<u64>();
    //     this.startedAt = ds.read<u64>();
    // }

    // public primaryKey(): u64 { return <u64>0; }

    public toString(): string {
        let str: string = "Auction: [ seller: " + RNAME(this.seller) + ", startingPrice: " + intToString(this.startingPrice.amount) +", endingPrice: " + intToString(this.endingPrice.amount) + "]";
        return str;
    }
 }

class ClockAuctionBase {
    // the originator who originate this auction.
    originator: account_name;

    // the delegate of URC721
    master: DragonCore;
    // cut owner takes on each auction, measured in basis points (1/100 of a percent);
    // Values 0-10,000 map to 0% - 100%
    ownerCut: u64;
    // Map from token ID to thieir corresponding auction.
    tokenIdToAuction: Map<u64, Auction> = new Map<u64, Auction>();

    protected prints(tag: string): void {
        Log.s(tag).flush();
        Log.s("ownerCut: ").i(this.ownerCut, 10).flush();
        Log.s("tokenIdToAuction.size: ").i(this.tokenIdToAuction.size(), 10).flush();
        let keys = this.tokenIdToAuction.keys();
        let values = this.tokenIdToAuction.values();
        for (let i: i32 = 0; i < this.tokenIdToAuction.size(); i++) {
            Log.s("key: ").i(keys[i], 10).s(", value: ").s(values[i].toString()).flush();
        }
    }

    protected _serialize(ds: DataStream): void {
        ds.write<u64>(this.ownerCut);

        let size = this.tokenIdToAuction.size();
        ds.write<i32>(size);

        if (size > 0) {
            let keys = this.tokenIdToAuction.keys();
            let values = this.tokenIdToAuction.values();

            for (let i: i32 = 0; i < size; i++) {
                ds.write<u64>(keys[i]);
                values[i].serialize(ds);
            }
        }
    }

    protected _deserialize(ds: DataStream): void {
        this.ownerCut = ds.read<u64>();

        let size = ds.read<i32>();
        if (size > 0) {
            for (let i: i32 = 0; i < size; i++) {
                let key = ds.read<u64>();
                let value = new Auction();
                value.deserialize(ds);

                this.tokenIdToAuction.set(key, value);
            }
        }
    }
    /**
     * @dev Returns true if the claimant owns the token.
     * @param claimant address claiming to own the token.
     * @param tokenId Id to token whose ownership to verify.
     */
    protected owns(claimant: account_name, tokenId: u64): boolean {
        return this.master.ownerOf(tokenId) == claimant;
    }

    protected escrow(owner: account_name, tokenId: u64): void {
        // escrow this token to the contract originator
        Log.s("SaleClockAuction.escorw owner = ").s(RNAME(owner)).s(" to = ").s(RNAME(this.originator)).s(" tokenId = ").i(tokenId, 10).flush();
        this.master.transferFrom(owner, this.originator, tokenId);
    }

    protected transfer(receiver: account_name, tokenId: u64): void {
        this.master.transfer(receiver, tokenId);
    }

    // Adds an auction to the list of open auctions. Also fires the
    // AuctionCreated event.
    protected addAuction(tokenId: u64, auction: Auction): void {
        // Require that all auctions have a duration of
        // at least one nimute. (keeps our math from getting hairy!)
        Log.s("addAuction start").flush();
        ultrain_assert(auction.duration > 60, "the auction's duration is less than 1 minute.");
        this.tokenIdToAuction.set(tokenId, auction);

        // event AuctionCreated(tokenId: u64, startingPrice: Asset, endingPrice: Asset, duration: u64);
        Log.s("start emitting event for add Auction").flush();
        emit("AuctionCreated", EventObject.setInt("tokenId", tokenId).setInt("startingPrice", auction.startingPrice.amount)
            .setInt("endingPrice", auction.endingPrice.amount).setInt("duration", auction.duration));
    }

    /// @dev Removes an auction from the list of open auctions.
    /// @param _tokenId - ID of NFT on auction.
    protected removeAuction(tokenId: u64): void {
        this.tokenIdToAuction.remove(tokenId);
    }

    // Cancels an auction unconditionally.
    protected _cancelAuction(tokenId: u64, seller: account_name): void {
        this.removeAuction(tokenId);
        this.master.transferByBid(this.originator, seller, tokenId);
        // this.transfer(seller, tokenId);
        // event AuctionCancelled(tokenId: u64);
        emit("AuctionCancelled", EventObject.setInt("tokenId", tokenId));
    }

    protected isOnAuction(auction: Auction): boolean {
        return auction.startedAt > 0;
    }

    protected currentPrice(auction: Auction): Asset {
        let secondsPassed: u64 = 0;

        // A bit of insurance against negative values (or wraparound).
        // Probably not necessary (since Ethereum guarnatees that the
        // now variable doesn't ever go backwards).
        if (now() > auction.startedAt) {
            secondsPassed = now() - auction.startedAt;
        }

        return this.computeCurrentPrice(
            auction.startingPrice,
            auction.endingPrice,
            auction.duration,
            secondsPassed
        );
    }

    protected computeCurrentPrice(startingPrice: Asset, endingPrice: Asset, duration: u64, secondsPassed: u64): Asset {
        if (secondsPassed > duration) {
            return endingPrice;
        } else {
            // endingPrice is sometimes lower than startingPrice
            let priceAdded = endingPrice.gt(startingPrice);
            let currentPrice = startingPrice.clone();

            let totalchanged: u64;
            if (priceAdded) {
                totalchanged = endingPrice.getAmount() - startingPrice.getAmount();
            } else {
                totalchanged = startingPrice.getAmount() - endingPrice.getAmount();
            }
            let currentPriceChange = totalchanged * secondsPassed / duration;

            let amount = currentPrice.getAmount();
            if (priceAdded) {
                amount += currentPriceChange;
            } else {
                amount -= currentPriceChange;
            }
            currentPrice.setAmount(amount);

            return currentPrice;
        }
    }

    protected computeCut(price: Asset): Asset {
        // NOTE: We don't use SafeMath (or similar) in this function because
        //  all of our entry functions carefully cap the maximum values for
        //  currency (at 128-bits), and ownerCut <= 10000 (see the require()
        //  statement in the ClockAuction constructor). The result of this
        //  function is always guaranteed to be <= _price.
        let amount = price.getAmount();
        amount = amount * this.ownerCut / 10000;

        let cut = price.clone();
        cut.setAmount(amount);
        return cut;
    }
    /*
     * to check if the tokenId is on auction, otherwise throw an exception.
     */
    protected isTokenIdOnAuction(tokenId: u64): void {
        let isAuction = this.tokenIdToAuction.contains(tokenId);
        ultrain_assert(isAuction, intToString(tokenId) +" is not on auction list.");
    }

    // Computes the price and transfers winnings
    // Does NOT transfer ownership of token.
    protected _bid(tokenId: u64, bidAmount: Asset): Asset {
        this.isTokenIdOnAuction(tokenId);

        let auction: Auction = this.tokenIdToAuction.get(tokenId);
        ultrain_assert(this.isOnAuction(auction), "this token id is not on auction.");

        let price: Asset = this.currentPrice(auction);
        ultrain_assert(bidAmount.gte(price), "bid amount is lower than current price.");

        let seller: account_name = auction.seller;

        // The bid is good! Remove the auction before sending the fees
        // to the sender so we can't have a reentrance attack.
        this.removeAuction(tokenId);

        // Transfer proceeds to seller (if there are any!)
        if (price.getAmount() > 0) {
            // Calculate the auctioneer's cut
            let auctioneerCut: Asset = this.computeCut(price);
            let sellerProceeds = price.clone();
            sellerProceeds.sub(auctioneerCut);

            // 从发起人帐户上转入到卖家帐户
            Asset.transfer(this.originator, seller, sellerProceeds, "seller proceeds");
        }

        let bidExcess = bidAmount.clone();
        bidExcess.sub(price);

        // Return the funds. Similar to the previous transfer, this is
        // not susceptible to a re-entry attack because the auction is
        // removed before any transfers occur.
        Asset.transfer(this.originator, Action.sender, bidExcess, "bid excess");
        // Tell the world!
        // evnet AuctionSuccessful(tokenId: u64, totalPrice: Asset, winner: account_name, seller: account_name);
        emit("AuctionSuccessful", EventObject.setInt("tokenId", tokenId).setInt("totalPrice", price.amount)
            .setInt("winner", Action.sender).setInt("seller", seller));

        return price;
    }
}

export class ClockAuction extends ClockAuctionBase {
    // master: UIP09;

    constructor() {
        // super();
        // this.master = master;
        // ultrain_assert(cut <= 10000, "ownercut must less than 10000.");
        // this.ownerCut = cut;
    }

    public withdrawBalance(): void {
        let msgSender = Action.sender;
        ultrain_assert(msgSender == this.originator || msgSender == HyperDragonContract, "can not withdraw balance");
        let originator = new Account(this.originator);
        let balance = originator.balance;
        originator.transfer(HyperDragonContract, balance, "auction withdraw balance");
    }

    public createAuction(tokenId: u64, startingPrice: Asset, endingPrice: Asset, duration: u64, seller: account_name): void {
        ultrain_assert(this.owns(Action.sender, tokenId), "transaction sender does not own the token.");
        this.escrow(Action.sender, tokenId);
        let auction = new Auction();
        auction.seller = seller;
        auction.startingPrice = startingPrice;
        auction.endingPrice = endingPrice;
        auction.duration = duration;
        auction.startedAt = now();

        this.addAuction(tokenId, auction);
    }

    // public bid(tokenId: u64, val: Asset): void {
    //     this._bid(tokenId, val);
    //     this.transfer(Action.current_sender(), tokenId);
    // }

    public cancelAuction(tokenId: u64): void {
        this.isTokenIdOnAuction(tokenId);
        let auction = this.tokenIdToAuction.get(tokenId);
        ultrain_assert(this.isOnAuction(auction), "this token is not on auction.");
        let seller: account_name = auction.seller;
        ultrain_assert(Action.sender == seller, "transaction sender is not the sender of auction ");
        this._cancelAuction(tokenId, seller);
    }

    public cancelAuctionWhenPaused(tokenId: u64): void {
        this.cancelAuction(tokenId);
    }

    public setOwnerCut(cut: u64): void {
        ultrain_assert(cut <= 10000, "cut is larger than 10000, and it is forbidden.");
        this.ownerCut = cut;
    }

    public getAuction(tokenId: u64): Auction {
        this.isTokenIdOnAuction(tokenId);
        let auction = this.tokenIdToAuction.get(tokenId);
        ultrain_assert(this.isOnAuction(auction), "the token is not on auction.");
        return auction;
    }

    public getcurrentPrice(tokenId: u64): Asset {
        this.isTokenIdOnAuction(tokenId);

        let auction = this.tokenIdToAuction.get(tokenId);
        ultrain_assert(this.isOnAuction(auction), "the token is not on auction.");
        return this.currentPrice(auction);
    }
}

export class SaleClockAuction extends ClockAuction implements Serializable {
    isSaleClockAuction: boolean = true;
    gen0SaleCount: u64;
    lastGen0SalePrices: Asset[] = [];

    constructor(master: DragonCore, originator: account_name, cut: u64) {
        // super();
        Log.s("SaleClockAuction.constructor originator = ").s(RNAME(originator)).s(" cut = ").i(cut, 10).flush();
        this.master = master;
        ultrain_assert(cut <= 10000, "the cut is larger than 10000, and it is forbidden.");
        this.originator = originator;
        this.ownerCut = cut;

        for (let i: i32 = 0; i < 5; i++) {
            this.lastGen0SalePrices[i] = new Asset(0, SYS);
        }
    }

    deserialize(ds: DataStream): void {
        this._deserialize(ds);
        this.gen0SaleCount = ds.read<u64>();
        this.lastGen0SalePrices = ds.readComplexVector<Asset>();
    }

    serialize(ds: DataStream): void {
        this._serialize(ds);
        ds.write<u64>(this.gen0SaleCount);
        ds.writeComplexVector<Asset>(this.lastGen0SalePrices);
    }

    primaryKey(): u64 {
        return NAME("auc.sale");
    }

    public createAuction(tokenId: u64, startingPrice: Asset, endingPrice: Asset, duration: u64, seller: account_name): void {
        this.escrow(seller, tokenId);
        let auction = new Auction();
        auction.seller = seller;
        auction.startingPrice = startingPrice;
        auction.endingPrice = endingPrice;
        auction.duration = duration;
        auction.startedAt = now();

        this.addAuction(tokenId, auction);
    }

    public bid(tokenId: u64, val: Asset): void {
        let bidder = Action.sender;
        let price = this._bid(tokenId, val);
        // createAuction时，tokenId已经转移到this.originator了。
        // 所以现在直接从this.originator转移到bidder
        this.master.transferByBid(this.originator, bidder, tokenId);

        let seller = this.tokenIdToAuction[tokenId].seller;
        if (seller == HyperDragonContract) {
            // Track gen0 sale prices
            let idx: i32 = <i32>(this.gen0SaleCount % 5);
            this.lastGen0SalePrices[idx] = price;
            this.gen0SaleCount++;
        }
    }

    public averageGen0SalePrice(): Asset {
        let sum: u64 = 0;
        for (let i = 0; i < 5; i++) {
            sum += this.lastGen0SalePrices[i].getAmount();
        }

        let ret = new Asset(sum / 5);
        ret.setSymbol(this.lastGen0SalePrices[0].getSymbol());
        return ret;
    }

    public saveToDBManager(): void {
        let db = new DBManager<SaleClockAuction>(NAME("mm.saleauc"), HyperDragonContract, NAME("mm.saleauc"));
        let existing = db.exists(this.primaryKey());
        if (existing) {
            Log.s("SaleClockAuction.saveToDB  existing = true.").flush();
            db.modify(HyperDragonContract, this);
        } else {
            Log.s("SaleClockAuction.saveToDB existing = false.").flush();
            db.emplace(HyperDragonContract, this);
        }
    }

    public loadFromDBManager(): void {
        let db = new DBManager<SaleClockAuction>(NAME("mm.saleauc"), HyperDragonContract, NAME("mm.saleauc"));
        let existing = db.get(this.primaryKey(), this);

        Log.s("SaleClockAuction.loadFromDB  existing = ").s( existing ? "true": "false").flush();
    }
}

export class SireClockAuction extends ClockAuction implements Serializable {

    isSireClockAuction: boolean = true;
    constructor(master: DragonCore, originator: account_name, cut: u64) {
        // super();
        this.master = master;
        this.originator = originator;
        ultrain_assert(cut <= 10000, "the cut is larger than 10000, and it is forbidden.");
        this.ownerCut = cut;
    }

    public createAuction(tokenId: u64, startingPrice: Asset, endingPrice: Asset, duration: u64, seller: account_name): void {
        this.escrow(seller, tokenId);
        let auction = new Auction();
        auction.seller = seller;
        auction.startingPrice = startingPrice;
        auction.endingPrice = endingPrice;
        auction.duration = duration;
        auction.startedAt = now();

        this.addAuction(tokenId, auction);
    }

    public bid(tokenId: u64, val: Asset): void {
        let seller = this.tokenIdToAuction[tokenId].seller;
        this._bid(tokenId, val);
        Log.s("ClockAuction.bid seller = ").s(RNAME(seller)).s(" current_sender = ").s(RNAME(Action.sender)).flush();
        /*
         * CAUTION: from地址使用SireAuctionAddress的原因在于， createSiringAuction时，这个token已经被SireAcutionAddress托管了。
         */
        this.master.transferByBid(SireAuctionAddress, Action.sender, tokenId);
    }

    public serialize(ds: DataStream): void {
        this._serialize(ds);
    }

    public deserialize(ds: DataStream): void {
        this._deserialize(ds);
    }

    public primaryKey(): u64 { return NAME("auc.sire"); }

    public loadFromDBManager(): void {
        let db = new DBManager<SireClockAuction>(NAME("mm.sireauc"), HyperDragonContract, NAME("mm.sireauc"));
        let existing = db.get(this.primaryKey(), this);
        this.prints("<== SireClockAuction.loadFromDB");
    }

    public saveToDBManager(): void {
        let db = new DBManager<SireClockAuction>(NAME("mm.sireauc"), HyperDragonContract, NAME("mm.sireauc"));
        let existing = db.exists(this.primaryKey());
        this.prints("==> SireClockAuction.saveToDB existing = " + (existing ? "true" : "false"));
        if (existing) {
            db.modify(HyperDragonContract, this);
        } else {
            db.emplace(HyperDragonContract, this);
        }
    }
}