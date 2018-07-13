import { env as Action } from "../../internal/action.d";
import { ultrain_assert, N } from "../../src/utils";
import { Asset } from "../../src/asset";
import { Map } from "../../src/map";
import { hours, days } from "../../lib/time";
import { Pausable } from "./pausable";
import { DragonCore } from "./dragoncore";
import { FightCore } from "./fightcore";
import { Titles } from "./titles";
import { BetId } from "./betid";
import { ISerializable } from "../../lib/ISerializable";
import { DataStream } from "../../src/datastream";
import { GenType } from "./genetype";
import { DBManager } from "../../src/dbmanager";
import { emit, EventObject } from "../../lib/events";
import { UGS } from "../../internal/types";
import { MatchAddress, HyperDragonContract } from "./consts";
import { queryBalance, send } from "../../src/balance";

class JoinUser implements ISerializable {
    dragon_id: u64;
    gen: GenType;
    titles: u64;

    constructor(dragon_id: u64 = 0, gen: GenType = new GenType(), titles: u64 = 0) {
        this.dragon_id = dragon_id;
        this.gen       = gen;
        this.titles    = titles;
    }

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.dragon_id);
        ds.write<u64>(this.titles);
        this.gen.serialize(ds);
    }

    public deserialize(ds: DataStream): void {
        this.dragon_id = ds.read<u64>();
        this.titles = ds.read<u64>();
        this.gen.deserialize(ds);
    }

    public primaryKey(): u64 { return <u64>0;}
}

class GuessUser implements ISerializable {
    beter: account_name;
    money: Asset;

    constructor(beter: account_name = 0, money: Asset = new Asset()) {
        this.beter = beter;
        this.money = money;
    }

    public serialize(ds: DataStream): void {
        ds.write<account_name>(this.beter);
        this.money.serialize(ds);
    }

    public deserialize(ds: DataStream): void {
        this.beter = ds.read<account_name>();
        this.money.deserialize(ds);
    }

    public primaryKey(): u64 { return <u64>0;}
}

class GuessInfo implements ISerializable {
    totalMoney: Asset;
    guessUserList: GuessUser[];

    public serialize(ds: DataStream): void {
        this.totalMoney.serialize(ds);
        ds.writeComplexVector<GuessUser>(this.guessUserList);
    }

    public deserialize(ds: DataStream): void {
        this.totalMoney.deserialize(ds);
        this.guessUserList = ds.readComplexVector<GuessUser>();
    }

    public primaryKey(): u64 { return <u64>0; }
}

type GuessListValue = Map<u64, GuessInfo>;
class MatchInfo implements ISerializable {
    // 0: 开启比赛 1：报名结束 2：竞猜阶段 3：战斗 4：发奖 5：比赛结束
    step: u8;
    matchType: u64;
    level: u64;
    status: boolean;
    joinNum: u64;
    fightGroup: account_name[/* 2 */][];
    joinList: Map<account_name, JoinUser>;
    // map struct: betid => { dragonId => GuessInfo }
    guessList: Map<u64, GuessListValue>;
    winner: account_name[];
    fightIndex: u64;
    groupIndex: u64;
    awardIndex: u64;
    awardKey: u64;
    round: u64;

    public serialize(ds: DataStream): void {
        ds.write<u8>(this.step);
        ds.write<u64>(this.matchType);
        ds.write<u64>(this.level);
        ds.write<boolean>(this.status);
        ds.write<u64>(this.joinNum);

        ds.writeVector<account_name>(this.fightGroup[0]);
        ds.writeVector<account_name>(this.fightGroup[1]);
        // for joinList
        let joinAccounts = this.joinList.keys();
        let joinUsers = this.joinList.values();
        ds.writeVarint32(joinAccounts.length);
        for (let i: u32 = 0; i < joinAccounts.length; i++) {
            ds.write<account_name>(joinAccounts[i]);
            joinUsers[i].serialize(ds);
        }
        // for guessList
        let betids = this.guessList.keys();
        let dragonidsMap = this.guessList.values();
        ds.writeVarint32(betids.length);
        for (let i: u32 = 0; i < betids.length; i++) {
            ds.write<u64>(betids[i]);

            let dragonids = dragonidsMap[i].keys();
            let dguessInfo = dragonidsMap[i].values();
            ds.write<u64>(dragonids.length);
            for (let j: u32 = 0; j < dragonids.length; j++) {
                ds.write<u64>(dragonids[j]);
                dguessInfo[j].serialize(ds);
            }
        }
        // commones
        ds.writeVector<account_name>(this.winner);
        ds.write<u64>(this.fightIndex);
        ds.write<u64>(this.groupIndex);
        ds.write<u64>(this.awardIndex);
        ds.write<u64>(this.awardKey);
        ds.write<u64>(this.round);
    }

    public deserialize(ds: DataStream): void {
        this.step = ds.read<u8>();
        this.matchType = ds.read<u64>();
        this.level = ds.read<u64>();
        this.status = ds.read<boolean>();
        this.joinNum = ds.read<u64>();

        // this.fightGroup = new Array(2);
        this.fightGroup[0] = ds.readVector<account_name>();
        this.fightGroup[1] = ds.readVector<account_name>();

        // for joinList
        // this.joinList = new Map<account_name, JoinUser>();
        let len: u32 = <u32>ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let acnt = ds.read<account_name>();
            let joinUser = new JoinUser();
            joinUser.deserialize(ds);
            this.joinList.set(acnt, joinUser);
        }
        // for guessList
        len = <u32>ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let betid = ds.read<u64>();

            let slen: u32 = <u32>ds.read<u64>();
            let abet = new Map<u64, GuessInfo>();
            for (let j: u32 = 0; j < slen; j++) {
                let did = ds.read<u64>();
                let guessInfo = new GuessInfo();
                guessInfo.deserialize(ds);

                abet.set(did, guessInfo);
            }

            this.guessList.set(betid, abet);
        }
        // commones
        this.winner = ds.readVector<account_name>();
        this.fightIndex = ds.read<u64>();
        this.groupIndex = ds.read<u64>();
        this.awardIndex = ds.read<u64>();
        this.awardKey = ds.read<u64>();
        this.round = ds.read<u64>();
    }

    public primaryKey(): u64 { return <u64>0; }
}

let MatchInfoTable: u64 = N("hd.matches");
let MatchInfoTableScope: u64 = N("mat.scope");

class MatchBase implements ISerializable {
    // match id
    match_id: u64 = 0;

    // 报名费
    regfees: Asset[] = [
        new Asset(200000, UGS), // 20.0000 UGS
        new Asset(200000, UGS),
        new Asset(200000, UGS),
        new Asset(200000, UGS),
        new Asset(200000, UGS)
    ];

    // 奖励系数
    rewardMultiple: u64[] = [100, 100, 100, 100, 100];

    fightLimit: u64 = 16;
    awardLimit: u64 = 16;
    groupLimit: u64 = 16;

    // 竞猜上下限
    // TODO(liangqin): fee的大小需要确定
    guessFeeMin: Asset = new Asset(100000, UGS); // 10.0000 UGS
    guessFeeMax: Asset = new Asset(100000000, UGS); // 10000.0000 UGS

    matchList: Map<u64, MatchInfo> = new Map<u64, MatchInfo>();
    // match limit num
    joinLimit: u64[] = [32, 32, 32, 32, 32];

    // 报名等级限制, match_level => gene_limit
    genLimit: Map<u64, u64[/*2*/]> = new Map<u64, u64[]>();

    // 称号个数冷却时间
    fightCooldowns: u64[] = [
        hours(4).toSeconds(),
        hours(8).toSeconds(),
        hours(12).toSeconds(),
        hours(16).toSeconds(),
        days(1).toSeconds(),
        days(2).toSeconds(),
        days(3).toSeconds(),
        days(3).toSeconds(), // FIXME(liangqin): 3 days for twice?????
        days(7).toSeconds()
    ];
    // DragonCore contract
    master: DragonCore;

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.match_id);
        ds.writeComplexVector<Asset>(this.regfees);
        ds.writeVector<u64>(this.rewardMultiple);
        ds.write<u64>(this.fightLimit);
        ds.write<u64>(this.awardLimit);
        ds.write<u64>(this.groupLimit);
        this.guessFeeMin.serialize(ds);
        this.guessFeeMax.serialize(ds);
        // for mathList
        let matchids = this.matchList.keys();
        let matchinfos = this.matchList.values();
        ds.writeVarint32(matchids.length);
        for (let i: u32 = 0; i < matchids.length; i++) {
            ds.write<u64>(matchids[i]);
            matchinfos[i].serialize(ds);
        }

        ds.writeVector<u64>(this.joinLimit);
        // for genLimits
        let matchLevels = this.genLimit.keys();
        let matchLimits = this.genLimit.values();
        ds.writeVarint32(matchLevels.length);
        for (let i: u32 = 0; i < matchLevels.length; i++) {
            ds.write<u64>(matchLevels[i]);
            ds.writeVector<u64>(matchLimits[i]);
        }

        ds.writeVector<u64>(this.fightCooldowns);
    }

    public deserialize(ds: DataStream): void {
        this.match_id       = ds.read<u64>();
        this.regfees        = ds.readComplexVector<Asset>();
        this.rewardMultiple = ds.readVector<u64>();
        this.fightLimit     = ds.read<u64>();
        this.awardLimit     = ds.read<u64>();
        this.groupLimit     = ds.read<u64>();

        this.guessFeeMin.deserialize(ds);
        this.guessFeeMax.deserialize(ds);

        // for matchList
        let len = <u32>ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let mid = ds.read<u64>();
            let minfo = new MatchInfo();
            minfo.deserialize(ds);

            this.matchList.set(mid, minfo);
        }

        this.joinLimit = ds.readVector<u64>();

        // for genLimit
        len = <u32>ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let ml = ds.read<u64>();
            let mlimit = ds.readVector<u64>();

            this.genLimit.set(ml, mlimit);
        }

        this.fightCooldowns = ds.readVector<u64>();
    }

    public primaryKey(): u64 {
        return <u64>0;
    }

    public storeParameters(): void {
        let matchdb: DBManager<MatchBase> = new DBManager<MatchBase>(MatchInfoTable, this.owner, MatchInfoTableScope);
        let existing = matchdb.get(this.primaryKey(), this);

        if (existing) {
            matchdb.modify(this.owner, this);
        } else {
            matchdb.emplace(this.owner, this);
        }
    }

    public loadParameters(): void {
        let matchdb: DBManager<MatchBase> = new DBManager<MatchBase>(MatchInfoTable, this.owner, MatchInfoTableScope);
        let existing = matchdb.get(this.primaryKey(), this);

        if (!existing) {
            // the first time to read from db and it is not exist, use default setting.
        }
    }

}

class FightResult {
    winner: account_name;
    loser : account_name;
}

export class MatchCore extends MatchBase {

    constructor(master: DragonCore) {
        this.master = master;
    }

    /*@action*/public startMatch(_id: u64, _matchType: u64, _level: u64): void {
        ultrain_assert(_id > this.match_id, "startMatch failed, _id is less than match_id");

        this.match_id = _id;
        let matchInfo = new MatchInfo();
        matchInfo.step = 0;
        matchInfo.matchType = _matchType;
        matchInfo.status = true;
        matchInfo.joinNum = 0;
        matchInfo.fightIndex = 0;
        matchInfo.groupIndex = 0;
        matchInfo.awardIndex = 0;
        matchInfo.awardKey = 0;
        matchInfo.fightGroup[0][0] = 0;
        matchInfo.fightGroup[1][0] = 0;
        matchInfo.winner[0] = 0;
        matchInfo.round = 1;

        this.matchList.set(this.match_id, matchInfo);

        let level: i32 = <i32>_level - 1;
        let reward_factor = this.joinLimit[level] * this.rewardMultiple[level] / 10000;
        let re1st = this.regfees[level].multi(15 * reward_factor);
        let re2nd = this.regfees[level].multi(10 * reward_factor);
        let re3rd = this.regfees[level].multi(5 * reward_factor);

        // event MatchStart(matchId: u64, matchType: u64, matchLevel: u64, maxNum: u64, regfee: u64, awardfee_1st: u32, awardfee_2nd: u32, awardfee_3rd: u32);
        emit("MatchStart", EventObject.set<u64>("matchId", _id)
                                      .set<u64>("matchType", _matchType)
                                      .set<u64>("matchLevel", _level)
                                      .set<u64>("maxNum", this.joinLimit[level])
                                      .set<u64>("regfee", this.regfees[level].amount)
                                      .set<u64>("awardfee_1st", re1st.amount)
                                      .set<u64>("awardfee_2st", re2nd.amount)
                                      .set<u64>("awardfee_3st", re3rd.amount)
                                    );
    }

    /*@action*/public joinMatch(joinUser: account_name, dragonId: u64, gen: GenType, titles: u64, fee: Asset): void {
        this._escrow(joinUser, dragonId);

        let matchInfo = this.matchList[this.match_id];
        ultrain_assert(fee >= this.regfees[<i32>(matchInfo.level - 1)], "supplied fee is small than the lower limit.");
        ultrain_assert(this.isCanJoin(joinUser), "can not join this match.");

        let gene = this.getDragonGene(dragonId);
        let gemLimit: u64[/* 2 */] = this.genLimit.get(matchInfo.level);
        if (gemLimit[1] > 0) {
            ultrain_assert(gene >= gemLimit[0] && gene <=gemLimit[1], "the dragon gene is not between the gene limit.");
        }

        let juser = new JoinUser(dragonId, gen, titles);
        matchInfo.joinList.set(joinUser, juser);

        matchInfo.joinNum += 1;
        matchInfo.winner.push(joinUser);

        // event JoinMatch(matchId: u64, _joinUser: account_name, _dragon_id: u64);
        let eobj = EventObject.set<u64>("matchId", this.match_id).set<u64>("joinUser", joinUser).set<u64>("dragon_id", dragonId);
        emit("JoinMatch", eobj);

        if (matchInfo.joinNum >= this.joinLimit[<i32>this.match_id]) {
            matchInfo.step = 1;
            // event CompleteJoin(matchId: u64);
            eobj = EventObject.set<u64>("matchId", this.match_id);
            emit("CompleteJoin", eobj);
        }
    }

    /*@action*/public guess(betid: u64, dragonId: u64, val: Asset): void {
        ultrain_assert(val >= this.guessFeeMin && val <= this.guessFeeMax, "bet value is invalid.");
        let matchInfo = this.matchList.get(this.match_id);
        ultrain_assert(matchInfo.step == 2, "can not bet this match now.");
        let bet = new BetId(betid);
        let fIndex = bet.index;
        let round = bet.round;

        ultrain_assert(matchInfo.round == round, "round dismatched for the match and betid.");
        let guessUser = new GuessUser(Action.current_sender(), val);
        let d1id = matchInfo.joinList.get(matchInfo.fightGroup[fIndex][0]).dragon_id;
        let d2id = matchInfo.joinList.get(matchInfo.fightGroup[fIndex][1]).dragon_id;
        ultrain_assert(d1id == dragonId || d2id == dragonId, "you did not join the match.");
        matchInfo.guessList.get(betid).get(dragonId).totalMoney.amount += val.amount;
        matchInfo.guessList.get(betid).get(dragonId).guessUserList.push(guessUser);

        let dra1 = matchInfo.guessList.get(betid).get(d1id);
        let dra2 = matchInfo.guessList.get(betid).get(d2id);
        let rate1 = dra1.totalMoney.amount > 0
                    ? 9500 * (dra1.totalMoney.amount + dra2.totalMoney.amount)/dra1.totalMoney.amount
                    : 19500;
        let rate2 = dra2.totalMoney.amount > 0
                    ? 9500 * (dra1.totalMoney.amount + dra2.totalMoney.amount)/dra2.totalMoney.amount
                    : 19500;
        rate1 = rate1 < 10000 ? 10000 : rate1;
        rate2 = rate2 < 10000 ? 10000 : rate2;

        // event GuessDragon(matchId: u64, round: u64, betId: u64, betuser: account_name, dragonId: u64, betfee: u64, rate1: u6, rate2: u64);
        emit("GuessDragon", EventObject.set<u64>("matchId", this.match_id)
                                       .set<u64>("round", round)
                                       .set<u64>("betId", betid)
                                       .set<u64>("betuser", guessUser.beter)
                                       .set<u64>("dragonId", dragonId)
                                       .set<u64>("betfee", val.amount)
                                       .set<u64>("rate1", rate1)
                                       .set<u64>("rage2", rate2));
    }

    /*@action*/public nextStep(nonce: u64): void {
        let matchInfo = this.matchList.get(this.match_id);

        ultrain_assert(matchInfo.status, "match status is false.");
        ultrain_assert(matchInfo.step > 0, "match step is 0");

        if (matchInfo.step == 1) {
            this.giveGroup(nonce);
        } else if (matchInfo.step == 2 || matchInfo.step == 3) {
            this.fighting(nonce);
        } else if (matchInfo.step == 4) {
            this.sendReward();
        }
    }

    /*@action*/public getEntryFee(): Asset {
        let id: i32 = <i32>this.match_id;
        let lidx: i32 = <i32>this.matchList[id].level - 1;
        return this.regfees[lidx];
    }

    /*@action*/public withdrawBalance(): void {
        // 转帐
        let msgSender = Action.current_sender();
        ultrain_assert(msgSender == MatchAddress || msgSender == HyperDragonContract, "can not withdraw balance");
        let balance = queryBalance(MatchAddress);
        send(MatchAddress, HyperDragonContract, balance, "match withdraw balance");
    }

    /*@action*/public setFightLimit(limit: u64): void {
        this.fightLimit = limit;
    }

    /*@action*/public setAwardLimit(limit: u64): void {
        this.awardLimit = limit;
    }

    /*@action*/public setGroupLimit(limit: u64): void {
        this.groupLimit = limit;
    }

    /*@action*/public setJoinLimit(joinLimit: u64[]): void {
        ultrain_assert(joinLimit.length == this.joinLimit.length, "join limit array length is not same.");
        this.joinLimit = [];
        for (let i: i32 = 0; i < joinLimit.length; i++) {
            this.joinLimit.push(joinLimit[i]);
        }
    }

    /*@action*/public setRegfees(regfees: Asset[]): void {
        ultrain_assert(regfees.length == this.regfees.length, "regfees limit array length is not same.");
        this.regfees = [];
        for (let i: i32 = 0; i < regfees.length; ++i) {
            this.regfees.push(regfees[i]);
        }
    }

    /*@action*/public setRewardMultiple(rewardMultiple: u64[]): void {
        ultrain_assert(rewardMultiple.length == this.rewardMultiple.length, "reward multiple limit array length is not same.");
        this.rewardMultiple = [];
        for (let i: i32 = 0; i < rewardMultiple.length; i++) {
            this.rewardMultiple.push(rewardMultiple[i]);
        }
    }

    /*@action*/public setGenLimit(level: u64, limit: u64[]): void {
        this.genLimit.set(level, limit);
    }

    /*@action*/public dissolve(matchId: u64): void {
        let matchInfo = this.matchList.get(this.match_id);
        let did1: u64;
        let did2: u64;

        let ad1: account_name;
        let ad2: account_name;

        // 分完组 从分组中退还
        if (matchInfo.step == 2 || matchInfo.step == 3) {
            // TODO(liangqin):
        } else { // 从winner中退还
            for (let i: i32 = 0; i < matchInfo.winner.length; i++) {
                ad1 = matchInfo.winner[i];
                did1 = matchInfo.joinList.get(ad1).dragon_id;

                if (true/*dragon belongs to owner*/) { // TODO
                    this.transfer(ad1, did1);
                }
            }
        }

        matchInfo.status = false;
    }

    private transfer(receiver: account_name, tokenId: u64): void {
        this.master.transfer(receiver, tokenId);
    }

    private _escrow(joinUser: account_name, dragonId: u64): void {
        this.master.transferFrom(joinUser, MatchAddress, dragonId);
    }

    /*@action*/public isCanJoin(joinUser: account_name): boolean {
        let matchInfo = this.matchList.get(this.match_id);
        if (matchInfo.status == false) return false;
        if (matchInfo.joinList[joinUser] != null && matchInfo.joinList[joinUser].dragon_id != 0) return false;
        if (matchInfo.joinNum >= this.joinLimit[<i32>(matchInfo.level - 1)]) return false;
        return true;
    }

    private getDragonGene(dragonId: u64): u64{
        let dragon = this.master.getDragon(dragonId);
        return dragon.generation;
    }
    // Random grouping
    private giveGroup(nonce: u64): void {
        let matchInfo: MatchInfo = this.matchList.get(this.match_id);
        let num: u64 = <u64>matchInfo.winner.length;
        let betId = (this.match_id << 12) + matchInfo.round;
        let groupEnd: u64 = min(num / 2, matchInfo.groupIndex + this.groupLimit);
        let a1: account_name;
        let a2: account_name;

        let seed = Action.random_uint64(nonce);
        let r: i32;
        let idx: i32 = 0;
        for (let i: u64 = 0; i < groupEnd; i++) {
            r = <i32>(seed % (num - 2*i));
            a1 = matchInfo.winner[r];
            idx = <i32>(num - 2*i - 1);
            matchInfo.winner[r] = matchInfo.winner[idx];
            matchInfo.winner[idx] = 0;
            seed /= 10;
            r = <i32>(seed % (num - 2*i - 1));
            idx = <i32>(num - 2*i - 2);
            a2 = matchInfo.winner[r];
            matchInfo.winner[r] = matchInfo.winner[r];
            matchInfo.winner[r] = 0;

            matchInfo.fightGroup.push([a1, a2]);
            // event CreateGroup(matchId: U64, dragonId1: u64, dragonId2: u64, round: u64, betid: u64, left_cn: u64);
            emit("CreateGroup", EventObject
                .set<u64>("matchId", this.match_id)
                .set<u64>("dragonId1", matchInfo.joinList.get(a1).dragon_id)
                .set<u64>("dragonId2", matchInfo.joinList.get(a2).dragon_id)
                .set<u64>("round", matchInfo.round)
                .set<u64>("betId", betId + (i << 4))
                .set<u64>("left_cn", num));
            seed /= 10;
        }

        if (groupEnd < num / 2) {
            matchInfo.groupIndex += this.groupLimit;
            // event MatchPause(matchId: u64);
            emit("MatchPause", EventObject.set<u64>("matchId", this.match_id));
        } else {
            matchInfo.groupIndex += this.groupLimit;
            matchInfo.step = 2;
            matchInfo.winner = [];
            // event CompleteGroup(matchId: u64, round: u64);
            emit("CompleteGroup", EventObject.set<u64>("matchId", this.match_id).set<u64>("round", matchInfo.round));
        }
    }

    private fighting(nonce: u64): void {

        let matchInfo = this.matchList[this.match_id];
        matchInfo.step = 3;

        let betId = <u64>(this.match_id << 12) + <u64>matchInfo.round;
        let thirdWin: u64[] = [];
        let fightEnd: u64 = <u64>matchInfo.fightGroup.length > (matchInfo.fightIndex + this.fightLimit) ?
                            matchInfo.fightIndex + this.fightLimit : <u64>matchInfo.fightGroup.length;

        for (let i: i32 = <i32>matchInfo.fightIndex; i < <i32>fightEnd; i++) {
            let id = <u64>(betId + (i << 4));
            let one = matchInfo.fightGroup[i][0];
            let two = matchInfo.fightGroup[i][1];
            let result = this.fightWithOther(id, one, two, nonce);
            // event DragonLose(uint256 matchId, uint256 round,uint256 dragonId);
            // event DragonVictory(uint256 matchId, uint256 round,uint256 betid, uint256 dragonId);
            // event BetOver(uint256 match_id, uint256 round, uint256 betid);

            emit("DragonLose", EventObject.set<u64>("matchId", this.match_id).set<u64>("round", matchInfo.round)
                .set<u64>("dragonId", matchInfo.joinList.get(result.loser).dragon_id));
            emit("DragonVictory", EventObject.set<u64>("matchId", this.match_id).set<u64>("round", matchInfo.round)
                .set<u64>("dragonId", matchInfo.joinList.get(result.loser).dragon_id));
            emit("BetOver", EventObject.set<u64>("matchId", this.match_id).set<u64>("round", matchInfo.round)
                .set<u64>("betid", id));

            if (matchInfo.fightGroup.length == 2) {
                thirdWin.push(matchInfo.joinList.get(result.loser).dragon_id);
            }
        }

        if (fightEnd < <u64>matchInfo.fightGroup.length) {
            matchInfo.fightIndex += this.fightLimit;
        } else {
            matchInfo.fightIndex = matchInfo.fightGroup.length;
            matchInfo.step = 4;
        }

        if (matchInfo.fightGroup.length == 2) {
            // event SemifinalResult(matchId: u64, dragonId_3: u64, dragonId_4: u64);
            emit("SemifinalResult", EventObject.set<u64>("matchId", this.match_id).set<u64>("dragonid_3", thirdWin[0]).set<u64>("dragonId_4", thirdWin[1]));
        }

        emit("MatchPause", EventObject.set<u64>("matchId", this.match_id));
    }

    private fightWithOther(betid: u64, a1: account_name, a2: account_name, nonce: u64): FightResult {
        let matchInfo = this.matchList.get(this.match_id);
        let cooldownIndex: i32;
        let cooldownTime: u64;

        let dra1 = matchInfo.joinList.get(a1);
        let dra2 = matchInfo.joinList.get(a2);
        let fightCore = new FightCore();
        let win = fightCore.startFight(betid, dra1.dragon_id, dra1.gen,
                    dra2.dragon_id, dra2.gen, nonce);

        let result = new FightResult();
        if (win == dra1.dragon_id) {
            result.winner = a1;
            result.loser = a2;
        } else {
            result.winner = a2;
            result.loser = a1;
        }

        let t: Titles = new Titles(matchInfo.joinList[result.loser].titles);
        dra1 = matchInfo.joinList.get(result.loser);
        dra2 = matchInfo.joinList.get(result.winner);

        // loser cooldown
        matchInfo.winner.push(result.winner);
        cooldownIndex = <i32>(t.count > 0 ? t.count - 1 : 0);
        cooldownTime = this.fightCooldowns[cooldownIndex];
        this.master.fightCooldown(dra1.dragon_id, cooldownIndex, cooldownTime);
        this.transfer(result.loser, dra1.dragon_id);

        // first winer cooldown
        let level: i32 = <i32>(matchInfo.level - 1);
        let rewardBase = <u64>(this.regfees[level].amount * this.joinLimit[level] * this.rewardMultiple[level] / 1000000);

        if (matchInfo.fightGroup.length == 1) {
            t = new Titles(dra2.titles);
            cooldownIndex = t.count > 0 ? t.count - 1 : 0;
            cooldownTime = this.fightCooldowns[cooldownIndex];
            this.master.fightCooldown(dra2.dragon_id, cooldownIndex, cooldownTime);
            this.transfer(result.winner, dra2.dragon_id);
            this.master.setTitles(dra2.dragon_id, this.match_id, 1);
            this.master.setTitles(dra1.dragon_id, this.match_id, 2);
            // event FinalResult(matchId: u64, dragonId_1: u64, dragonId_2: u64);
            emit("FinalResult", EventObject.set<u64>("matchId", this.match_id).set<u64>("dragonId_1", dra2.dragon_id).set<u64>("dragonId_2", dra1.dragon_id));
            // 冠亚军奖励
            send(MatchAddress, result.winner, new Asset(1500 * rewardBase, UGS), "winner reward");
            send(MatchAddress, result.loser, new Asset(1000 * rewardBase, UGS), "2nd winner reward");
        }

        if (matchInfo.fightGroup.length == 2) {
            this.master.setTitles(dra1.dragon_id, this.match_id, 3);
            send(MatchAddress, result.loser, new Asset(500 * rewardBase, UGS), "2rd winner reward");
        }

        return result;
    }

    private sendReward(): void {
        let matchInfo = this.matchList.get(this.match_id);
        let baseBetid: u64 = this.match_id << 12 + matchInfo.round;
        let betid: u64;
        let winDragon: DragonId;
        let loseDragon: DragonId;
        let awardStart = matchInfo.awardKey;

        for (let i: i32 = <i32>matchInfo.awardKey; i < matchInfo.fightGroup.length; i++) {
            betid = baseBetid + <u64>(i << 4);
            let fg: account_name[] = matchInfo.fightGroup[i];
            if (matchInfo.winner[i] == fg[0]) {
                winDragon = matchInfo.joinList.get(fg[0]).dragon_id;
                loseDragon = matchInfo.joinList.get(fg[1]).dragon_id;
            } else {
                loseDragon = matchInfo.joinList.get(fg[0]).dragon_id;
                winDragon = matchInfo.joinList.get(fg[1]).dragon_id;
            }
            this.sendOne(betid, winDragon, loseDragon);
        }
        // 发完本轮奖励
        if (awardStart >= <u64>matchInfo.fightGroup.length) {
            // 所有人发完奖励 next
            if (matchInfo.fightGroup.length > 1) {
                matchInfo.step = 1;
                matchInfo.round += 1;
                // event NextRound(matchId: u64, round: u64);
                emit("NextRound", EventObject.set<u64>("matchId", this.match_id).set<u64>("round", matchInfo.round));
                // event RoundOver(matchId: u64, round: u64);
                emit("RoundOver", EventObject.set<u64>("matchId", this.match_id).set<u64>("round", matchInfo.round - 1));
                matchInfo.groupIndex = 0;
                matchInfo.fightIndex = 0;
                matchInfo.awardIndex = 0;
                matchInfo.awardKey = 0;
            } else {
                matchInfo.status = false;
                // event CompleteMatch(matchId: u64);
                emit("CompleteMatch", EventObject.set<u64>("matchId", this.match_id));
            }
            matchInfo.fightGroup = [];
        }
    }

    private guessLoseNotice(betid: u64, dragonId: u64): void {
        let matchInfo = this.matchList.get(this.match_id);
        let limit: u64;

        let list = matchInfo.guessList.get(betid).get(dragonId).guessUserList;
        limit = list.length > 200 ? 200 : list.length;

        if (limit > 0) {
            for (let i: u64 = 0; i < limit; i++) {
                // event GuessLose(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64);
                emit("GuessLoss", EventObject.set<u64>("user", list[i].beter).set<u64>("price", list[i].money.amount)
                    .set<u64>("dragonId", dragonId).set<u64>("betId", betid).set<u64>("matchId", this.match_id));
            }
        }
    }

    private sendOne(betid: u64, winDragon: DragonId, loseDragon: DragonId): void {
        let matchInfo = this.matchList.get(this.match_id);
        let money: u64;
        let awardEnd: u64;
        let rate: u64;
        let dragonId: DragonId = 0;

        let winGuessInfo = matchInfo.guessList.get(betid).get(winDragon);
        let loseGuessInfo = matchInfo.guessList.get(betid).get(loseDragon);

        if (winGuessInfo.guessUserList.length > 0) {
            rate = winGuessInfo.totalMoney.amount > 0 ?
                <u64>(9500 * (winGuessInfo.totalMoney.amount + loseGuessInfo.totalMoney.amount) / winGuessInfo.totalMoney.amount) :
                9500;

            rate = rate < 10000 ? 10000 : rate;
            dragonId = winDragon;
        } else {
            // 获胜方没有竞猜 返回
            if (loseGuessInfo.guessUserList.length > 0) {
                rate = 10000;
                dragonId = loseDragon;
            } else {
                matchInfo.awardKey += 1;
            }
        }

        if (dragonId > 0) {
            let betUsers = matchInfo.guessList.get(betid).get(dragonId).guessUserList;
            awardEnd = <u64>betUsers.length > matchInfo.awardIndex + this.awardLimit ?
                    matchInfo.awardIndex + this.awardLimit :
                    <u64>betUsers.length;
            for (let i = <i32>matchInfo.awardIndex; i < <i32>awardEnd; i++) {
                money = (rate * betUsers[i].money.amount) / 10000;
                send(MatchAddress, betUsers[i].beter, new Asset(money, UGS), "better transfer.");

                // 竞猜获胜 触发event
                if (dragonId == winDragon) {
                    // event GuessWin(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64, money: u64);
                    emit("GuessWin", EventObject.set<u64>("user", betUsers[i].beter).set<u64>("price", betUsers[i].money.amount)
                        .set<u64>("dragonId", dragonId).set<u64>("betId", betid).set<u64>("matchId", this.match_id).set<u64>("money", money));
                } else {
                    // event GuessLoseReturn(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64, money: u64);
                    emit("GuessLossReturn", EventObject.set<u64>("user", betUsers[i].beter).set<u64>("price", betUsers[i].money.amount)
                        .set<u64>("dragonId", dragonId).set<u64>("betId", betid).set<u64>("matchId", this.match_id).set<u64>("money", money));
                }
            }

            // 未发完 继续
            if (awardEnd < <u64>betUsers.length) {
                matchInfo.awardIndex += this.awardLimit;
                // event MatchPause(matchId: u64);
                emit("MatchPause", EventObject.set<u64>("matchId", this.match_id));
            } else {
                matchInfo.awardIndex = 0;
                matchInfo.guessList.get(betid).remove(dragonId);
                matchInfo.awardKey += 1;
            }
        }
    }
}