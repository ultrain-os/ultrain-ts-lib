
/**
 * @author fanliangqin@ultrain.io
 */
import { NAME,RNAME } from "../../src/account";

// type GenType    = u64;
type DragonGene = u64;
type DragonId   = u64;
type DragonIndex = u64;
type TokenId = u64;
type MatchId = u64;

export let HyperDragonContract = NAME("mima.dragon");
export let CEO = NAME("mima.ceo");
export let CFO = NAME("mima.cfo");
export let API = NAME("mima.api");

export let SaleAuctionAddress = NAME("mm.saleauc");
export let SireAuctionAddress = NAME("mm.sireauc");

export let MatchAddress = NAME("mm.match");

// export let HyperDragonContract = NAME("mmdragon");
// export let CEO = NAME("mmceo");
// export let CFO = NAME("mmcfo");
// export let API = NAME("mmapi");

// export let SaleAuctionAddress = NAME("mmsaleauc");
// export let SireAuctionAddress = NAME("mmsireauc");

// export let MatchAddress = NAME("mmmatch");

export const DEBUG: boolean = true;
