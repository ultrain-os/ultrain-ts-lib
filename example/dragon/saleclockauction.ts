/**
 * @author fanliangqin@ultrain.io
 * @datetime 13:57:38, 06/28/2018
 * All rights reserved by ultrain.io @2018
 */

import { env as Action } from "../../internal/action.d";
import { Asset } from "../../src/asset";
import { DragonCore } from "./dragoncore";
import { ultrain_assert } from "../../src/utils";
import { env as system } from "../../internal/system.d";
import { Map } from "../../src/map";

class Auction {
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
 }


class ClockAuctionBase {
    // the delegate of URC721
    master: DragonCore;
    // cut owner takes on each auction, measured in basis points (1/100 of a percent);
    // Values 0-10,000 map to 0% - 100%
    ownerCut: u64;
    // Map from token ID to thieir corresponding auction.
    tokenIdToAuction: Map<u64, Auction>;

    // event AuctionCreated(tokenId: u64, startingPrice: Asset, endingPrice: Asset, duration: u64);
    // evnet AuctionSuccessful(tokenId: u64, totalPrice: Asset, winner: account_name, seller: account_name);
    // event AuctionCancelled(tokenId: u64);

    /**
     * @dev Returns true if the claimant owns the token.
     * @param claimant address claiming to own the token.
     * @param tokenId Id to token whose ownership to verify.
     */
    protected owns(claimant: account_name, tokenId: u64): boolean {
        return this.master.ownerOf(tokenId) == claimant;
    }

    protected escrow(owner: account_name, tokenId: u64): void {
        // TODO(liangqin): how to get 'to' address
        let to: account_name = 0;
        this.master.transferFrom(owner, to, tokenId);
    }

    protected transfer(receiver: account_name, tokenId: u64): void {
        this.master.transfer(receiver, tokenId);
    }

    // Adds an auction to the list of open auctions. Also fires the
    // AuctionCreated event.
    protected addAuction(tokenId: u64, auction: Auction): void {
        // Require that all auctions have a duration of
        // at least one nimute. (keeps our math from getting hairy!)
        ultrain_assert(auction.duration > 60, "the auction's duration is less than 1 minute.");
        this.tokenIdToAuction.set(tokenId, auction);

        // emit AuctionCreated(tokenId, auction.startingPrice, auction.endingPrice, auction.duration);
    }

    /// @dev Removes an auction from the list of open auctions.
    /// @param _tokenId - ID of NFT on auction.
    protected removeAuction(tokenId: u64): void {
        this.tokenIdToAuction.delete(tokenId);
    }

    // Cancels an auction unconditionally.
    protected _cancelAuction(tokenId: u64, seller: account_name): void {
        this.removeAuction(tokenId);
        this.transfer(seller, tokenId);
        // emit AuctionCancelled(tokenId);
    }

    protected isOnAuction(auction: Auction): boolean {
        return auction.startedAt > 0;
    }

    protected currentPrice(auction: Auction): Asset {
        let secondsPassed: u64 = 0;

        // A bit of insurance against negative values (or wraparound).
        // Probably not necessary (since Ethereum guarnatees that the
        // now variable doesn't ever go backwards).
        if (system.now() > auction.startedAt) {
            secondsPassed = system.now() - auction.startedAt;
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
            let priceAdded = endingPrice > startingPrice;
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
    }

    // Computes the price and transfers winnings
    // Does NOT transfer ownership of token.
    protected _bid(tokenId: u64, bidAmount: Asset): Asset {
        let auction: Auction = this.tokenIdToAuction.get(tokenId);
        ultrain_assert(this.isOnAuction(auction), "this token id is not on auction.");

        let price: Asset = this.currentPrice(auction);
        ultrain_assert(bidAmount >= price, "bid amount is lower than current price.");

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

            // TODO(liangqin): address.transfer
            // seller.transfer(sellerProceeds);
        }

        let bidExcess = bidAmount.clone();
        bidExcess.sub(price);

        // Return the funds. Similar to the previous transfer, this is
        // not susceptible to a re-entry attack because the auction is
        // removed before any transfers occur.
        // TODO(liangqin)
        // msg.sender.transfer(bidExcess);

        // Tell the world!
        // emit AuctionSuccessful(tokenId, price, Action.current_sender(), seller);

        return price;
    }
}

export class ClockAuction extends ClockAuctionBase {
    master: DragonCore;

    constructor(master: DragonCore, cut: u64) {
        // super();
        this.master = master;
        ultrain_assert(cut <= 10000, "ownercut must less than 10000.");
        this.ownerCut = cut;
    }

    public withdrawBalance(): void {
        // TODO(liangqin): 怎么从UGS帐户中提取余额？
    }

    public createAuction(tokenId: u64, startingPrice: Asset, endingPrice: Asset, duration: u64, seller: account_name): void {
        ultrain_assert(this.owns(Action.current_sender(), tokenId), "transaction sender does not own the token.");
        this.escrow(Action.current_sender(), tokenId);
        let auction = new Auction();
        auction.seller = seller;
        auction.startingPrice = startingPrice;
        auction.endingPrice = endingPrice;
        auction.duration = duration;
        auction.startedAt = system.now();

        this.addAuction(tokenId, auction);
    }

    public bid(tokenId: u64, val: Asset): void {
        this._bid(tokenId, val);
        this.transfer(Action.current_sender(), tokenId);
    }

    public cancelAuction(tokenId: u64): void {
        let auction = this.tokenIdToAuction.get(tokenId);
        ultrain_assert(this.isOnAuction(auction), "this token is not on auction.");
        let seller: account_name = auction.seller;
        ultrain_assert(Action.current_sender() == seller, "transaction sender is not the sender of auction ");
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
        let auction = this.tokenIdToAuction[tokenId];
        ultrain_assert(this.isOnAuction(auction), "the token is not on auction.");
        return auction;
    }

    public getcurrentPrice(tokenId: u64): Asset {
        let auction = this.tokenIdToAuction[tokenId];
        ultrain_assert(this.isOnAuction(auction), "the token is not on auction.");
        return this.currentPrice(auction);
    }
}

export class SaleClockAuction extends ClockAuction {
    master: DragonCore;

    isSaleClockAuction: boolean = true;
    gen0SaleCount: u64;
    lastGen0SalePrices: Asset[] = [];

    constructor(master: DragonCore, cut: u64) {
        // super();
        this.master = master;
        ultrain_assert(cut < 10000, "the cut is larger than 10000, and it is forbidden.");
        this.ownerCut = cut;
    }

    public createAuction(tokenId: u64, startingPrice: Asset, endingPrice: Asset, duration: u64, seller: account_name): void {
        this.escrow(seller, tokenId);
        let auction = new Auction();
        auction.seller = seller;
        auction.startingPrice = startingPrice;
        auction.endingPrice = endingPrice;
        auction.duration = duration;
        auction.startedAt = system.now();

        this.addAuction(tokenId, auction);
    }

    public bid(tokenId: u64, val: Asset): void {
        let seller = this.tokenIdToAuction[tokenId].seller;
        let price = this._bid(tokenId, val);
        this.transfer(Action.current_sender(), tokenId);

        // TODO(liangqin): how to do this?
        // if (seller == address(nonFungibleContract)) {
        //     // Track gen0 sale prices
        //     lastGen0SalePrices[gen0SaleCount % 5] = price;
        //     gen0SaleCount++;
        // }
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
}

export class SireClockAuction extends ClockAuction {
    master: DragonCore;

    isSireClockAuction: boolean = true;

    constructor(master: DragonCore, cut: u64) {
        // super();
        this.master = master;
        ultrain_assert(cut < 10000, "the cut is larger than 10000, and it is forbidden.");
        this.ownerCut = cut;
    }

    public createAuction(tokenId: u64, startingPrice: Asset, endingPrice: Asset, duration: u64, seller: account_name): void {
        this.escrow(seller, tokenId);
        let auction = new Auction();
        auction.seller = seller;
        auction.startingPrice = startingPrice;
        auction.endingPrice = endingPrice;
        auction.duration = duration;
        auction.startedAt = system.now();

        this.addAuction(tokenId, auction);
    }

    public bid(tokenId: u64, val: Asset): void {
        let seller = this.tokenIdToAuction[tokenId].seller;
        this._bid(tokenId, val);
        this.transfer(seller, tokenId);
    }
}