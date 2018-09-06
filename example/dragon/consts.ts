
/**
 * @author fanliangqin@ultrain.io
 */
import { NAME } from "../../src/account";

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

export const DEBUG: boolean = false;
