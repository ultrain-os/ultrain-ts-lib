/**
 * @author fanliangqin@ultrain.io
 * @datetime 09:25:20, 07/04/2018
 * All rights reserved by ultrain.io @2018
 */

 // Composite of bet id
 // H-----------------------------------L
 // ..................FF            FF               F
 //          |- match_id -||-8bit group_index -||-4bit round-|

 export class BetId {
     private _betId: u64;

     constructor(betId: u64) {
         this._betId = betId;
     }

     public get matchId(): i32 {
         return <i32>(this._betId >> 12);
     }

     public get groupIndex(): i32 {
         return <i32>((this._betId >> 4) & 0xff);
     }

     public get round(): u32 {
         return <u32>(this._betId & 0xF);
     }
 }