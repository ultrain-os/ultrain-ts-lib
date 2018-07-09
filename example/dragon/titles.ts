/**
 * @author fanliangqin@ultrain.io
 * @datetime 14:36:34, 07/03/2018
 * All rights reserved by ultrain.io @2018
 */

/* Composite of dragon _titles in solidity */
/* H----------------------------------------------L*/
/* .............        FF   FF  FF                     FF*/
/*          |- 2bit ranking-||- 22bit match id-||-8bit _titles count -|*/


/* IMPLEMENT: in Ultrain, reset titles as below. */

/* H------------------------------------------------------L */
/* FFF  FFF  FFF   FFF                    FFF                     F   */
/*                            |-2bit rank-||-10bit matchid-||-4bit count-| */
/*              |-2nd record-||-   the 1st match record   -| */

// 循环保留最新五场比赛的信息

const MAX_MATCH_COUNT: u64 = 5;

export class Titles {
    private _title: u64;

    static compositeMatchIdAndRank(matchId: u64, rank: u64): u64 {

        let id = (matchId & 0x3FF); // last 10 bits
        let r = (rank & 0x3);

        return (id + (r << 10));
    }

    constructor(_title: u64 = 0) {
        this._title = _title;
    }

    public get count(): u8 {
        return <u8>(this._title & 0xf);
    }

    public set count(cnt: u8) {
        this._title = (this._title >> 4) << 4;
        this._title += (cnt & 0xF);
    }

    // 最新一场的排名
    public get rank(): u8 {
        let pos = this.count % MAX_MATCH_COUNT
        let match = (this._title >> (4 + pos * 12));
        return <u8>(match >> 10);
    }

    // public set rank(r: u8) {
    //     let cnt = this.count;
    //     let m = this._title >> 10;
    //     m = m << 2;
    //     m += r;
    //     m = m << 8;
    //     m += cnt;

    //     this._title = m;
    // }
    // 最新一场的matchId
    public get matchid(): u32 {
        let pos = this.count % MAX_MATCH_COUNT
        let match = (this._title >> (4 + pos * 12));
        return <u32>(match & 0x3FF);
    }

    // public set matchid(mid: u32) {
    //     let cnt = this.count;
    //     let rank = this.rank;

    //     let t: u64 = (<u64>mid) << 2 + rank;
    //     t = (t << 8) + cnt;

    //     this._title = t;
    // }

    // 设置一场比赛的结果
    public set match(mt: u64) {
        let cnt = this.count;
        let last4matches = ((this._title >> 4) << 16);
        this._title = last4matches + ((mt & 0xFFF) << 4) + cnt;
    }

    public get title(): u64 {
        return this._title;
    }
}