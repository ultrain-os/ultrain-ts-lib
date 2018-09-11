import { Action } from "../../src/action";
import { ultrain_assert, intToString} from "../../src/utils";
import { Asset } from "../../src/asset";
import { Map } from "../../lib/map";
import { DragonCore } from "./dragoncore";
import { FightCore } from "./fightcore";
import { Titles } from "./titles";
import { BetId } from "./betid";
import { GenType } from "./genetype";
import { DBManager } from "../../src/dbmanager";
import { emit, EventObject } from "../../src/events";
import { SYS } from "../../src/asset";
import { MatchAddress, HyperDragonContract, DEBUG } from "./consts";
import { Log } from "../../src/log";
import { Return } from "../../src/return";
import { NAME, Account } from "../../src/account";
import { seconds } from "../../src/time";
import { GeneScience } from "./genescience";

class JoinUser implements Serializable {
    dragon_id: u64;
    gen: GenType;
    titles: u64;

    constructor(dragon_id: u64, gen: GenType, titles: u64) {
        this.dragon_id = dragon_id;
        this.gen       = gen;
        this.titles    = titles;
    }

    // public serialize(ds: DataStream): void {
    //     ds.write<u64>(this.dragon_id);
    //     ds.write<u64>(this.titles);
    //     this.gen.serialize(ds);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.dragon_id = ds.read<u64>();
    //     this.titles = ds.read<u64>();
    //     this.gen.deserialize(ds);
    // }

    // public primaryKey(): u64 { return <u64>0;}
}

class GuessUser implements Serializable {
    beter: account_name;
    money: Asset;
    // FIXME can not remove default parameters here. Waiting for fix.
    constructor(beter: account_name = 0, money: Asset = new Asset()) {
        this.beter = beter;
        this.money = money;
    }

    // public serialize(ds: DataStream): void {
    //     ds.write<account_name>(this.beter);
    //     this.money.serialize(ds);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.beter = ds.read<account_name>();
    //     this.money.deserialize(ds);
    // }

    // public primaryKey(): u64 { return <u64>0;}
}

class GuessInfo implements Serializable {
    totalMoney: Asset;
    guessUserList: GuessUser[];

    constructor() {
        this.totalMoney    = new Asset();
        this.guessUserList = new Array<GuessUser>(0);
    }

    // public serialize(ds: DataStream): void {
    //     this.totalMoney.serialize(ds);
    //     // ds.writeComplexVector<GuessUser>(this.guessUserList);
    //     let len = this.guessUserList.length;
    //     Log.s("GuessInfo.serialize len = ").i(len).flush();
    //     ds.writeVarint32(len);
    //     for (let i: i32 = 0; i < len; i++) {
    //         this.guessUserList[i].serialize(ds);
    //     }
    // }

    // public deserialize(ds: DataStream): void {
    //     this.totalMoney.deserialize(ds);
    //     // this.guessUserList = ds.readComplexVector<GuessUser>();
    //     let len = ds.readVarint32();
    //     Log.s("GuessInfo.deserialize len = ").i(len).flush();
    //     for (let i: u32 = 0; i< len; i++) {
    //         let user = new GuessUser(0, new Asset());
    //         user.deserialize(ds);

    //         this.guessUserList.push(user);
    //     }
    // }

    // public primaryKey(): u64 { return <u64>0; }
}

class GuessDragonMap implements Serializable {
    dragonId: DragonId;
    guesser: GuessInfo;

    constructor(id: DragonId = 0) {
        this.dragonId = id;
        this.guesser = new GuessInfo();
    }

    // public serialize(ds: DataStream): void {
    //     Log.s("GuessDragonMap.serialize dragonId = ").i(this.dragonId).flush();
    //     ds.write<u64>(this.dragonId);
    //     this.guesser.serialize(ds);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.dragonId = ds.read<u64>();
    //     Log.s("GuessDragonMap.deserialize dragonId = ").i(this.dragonId).flush();
    //     this.guesser.deserialize(ds);
    // }

    // public primaryKey(): u64 { return <u64>0; }
}

class GuessNode implements Serializable {
    betId: u64;
    participants: GuessDragonMap[];

    constructor(id: u64 = 0) {
        this.betId = id;
        this.participants = [];
    }

    public get(dragonId: DragonId): GuessDragonMap {
        for (let i: i32 = 0; i < this.participants.length; i++) {
            if (this.participants[i].dragonId == dragonId) {
                return this.participants[i];
            }
        }

        let guessDragon = new GuessDragonMap(dragonId);
        this.participants.push(guessDragon);
        return guessDragon;
    }

    public remove(dragonid: DragonId): void {
        let idx = -1;
        for (let i: i32 = 0; i < this.participants.length; i++) {
            if (this.participants[i].dragonId == dragonid) {
                idx = i;
                break;
            }
        }

        if (idx != -1) {
            this.participants.splice(idx, 1);
        }
    }

    // public serialize(ds: DataStream): void {
    //     ds.write<u64>(this.betId);
    //     // ds.writeComplexVector<GuessDragonMap>(this.participants);
    //     let len = this.participants.length;
    //     Log.s("GuessNode.serialize betId = ").i(this.betId).s(", len = ").i(len).flush();
    //     ds.writeVarint32(len);
    //     for (let i: i32 = 0; i < len; i++) {
    //         this.participants[i].serialize(ds);
    //     }
    // }

    // public deserialize(ds: DataStream): void {
    //     this.betId = ds.read<u64>();
    //     // this.participants = ds.readComplexVector<GuessDragonMap>();
    //     let len = ds.readVarint32();
    //     Log.s("GuessNode.deserialize betId = ").i(this.betId).s(", len = ").i(len).flush();
    //     for (let i: u32 = 0; i < len; i++) {
    //         let parti = new GuessDragonMap();
    //         parti.deserialize(ds);

    //         this.participants.push(parti);
    //     }
    // }

    // public primaryKey(): u64 { return <u64>0; }
}

// map struct: betid => { dragonId => GuessInfo }
class GuessArray implements Serializable {
    nodes: GuessNode[];

    constructor() {
        this.nodes = [];
    }

    public get(betId: u64): GuessNode {
        for (let i: i32 = 0; i < this.nodes.length; i++) {
            if(this.nodes[i].betId == betId) {
                return this.nodes[i];
            }
        }

        let node = new GuessNode(betId);
        this.nodes.push(node);
        return node;
    }

    // public serialize(ds: DataStream): void {
    //     // ds.writeComplexVector<GuessNode>(this.nodes);

    //     let len = this.nodes.length;
    //     Log.s("GuessArray.serialize len = ").i(len).flush();
    //     ds.writeVarint32(len);
    //     for (let i: i32 = 0; i< len; i++) {
    //         this.nodes[i].serialize(ds);
    //     }
    // }

    // public deserialize(ds: DataStream): void {
    //     // this.nodes = ds.readComplexVector<GuessNode>();
    //     let len = ds.readVarint32();
    //     Log.s("GuessArray.deserialize len = ").i(len).flush();
    //     for (let i: u32 = 0; i < len; i++) {
    //         let node = new GuessNode();
    //         node.deserialize(ds);

    //         this.nodes.push(node);
    //     }
    // }

    // public primaryKey(): u64 { return <u64>0; }
}

class GroupParam implements Serializable {
    p1: account_name;
    p2: account_name;

    constructor(p1: account_name = 0, p2: account_name = 0) {
        this.p1 = p1;
        this.p2 = p2;
    }

    // public serialize(ds: DataStream): void {
    //     ds.write<account_name>(this.p1);
    //     ds.write<account_name>(this.p2);
    // }

    // public deserialize(ds: DataStream): void {
    //     this.p1 = ds.read<account_name>();
    //     this.p2 = ds.read<account_name>();
    // }

    // public primaryKey(): u64 { return <u64> 0;}
}

class MatchInfo implements Serializable {
    id: u8;
    // 0: 开启比赛 1：报名结束 2：竞猜阶段 3：战斗 4：发奖 5：比赛结束
    step: u8;
    matchType: u64;
    level: u64;
    status: boolean;
    joinNum: u64;
    fightGroup: GroupParam[];
    joinList: Map<account_name, JoinUser>;
    // map struct: betid => { dragonId => GuessInfo }
    guessList: GuessArray;
    winner: account_name[];
    fightIndex: u64;
    groupIndex: u64;
    awardIndex: u64;
    awardKey: u64;
    round: u64;

    constructor() {
        this.id = 0;
        this.step = 0;
        this.matchType = 0;
        this.level = 0;
        this.status = true;
        this.joinNum = 0;
        this.fightGroup = [];
        this.joinList = new Map<account_name, JoinUser>();

        this.guessList = new GuessArray();
        this.winner = [];
        this.fightIndex = 0;
        this.groupIndex = 0;
        this.awardIndex = 0;
        this.awardKey = 0;
        this.round = 0;
    }

    public prints(tag: string): void {
        Log.s(tag).s("  MatchInfo id = ").i(this.id).flush();
        Log.s("    step = ").i(this.step).flush();
        Log.s("    status = ").s( this.status ? "true" : "false").flush();
        Log.s("    joinNum = ").i(this.joinNum).flush();
        Log.s("    level = ").i(this.level).flush();
        Log.s("    fightIndex = ").i(this.fightIndex).flush();
        Log.s("    round = ").i(this.round).flush();
    }

    public serialize(ds: DataStream): void {
        ds.write<u8>(this.id);
        ds.write<u8>(this.step);
        ds.write<u64>(this.matchType);
        ds.write<u64>(this.level);
        ds.write<boolean>(this.status);
        ds.write<u64>(this.joinNum);

        ds.writeComplexVector<GroupParam>(this.fightGroup);
        // for joinList
        let joinAccounts = this.joinList.keys();
        let joinUsers = this.joinList.values();
        ds.writeVarint32(joinAccounts.length);
        for (let i: i32 = 0; i < joinAccounts.length; i++) {
            ds.write<account_name>(joinAccounts[i]);
            joinUsers[i].serialize(ds);
        }
        // for guessList
        this.guessList.serialize(ds);

        // commones
        ds.writeVector<account_name>(this.winner);
        ds.write<u64>(this.fightIndex);
        ds.write<u64>(this.groupIndex);
        ds.write<u64>(this.awardIndex);
        ds.write<u64>(this.awardKey);
        ds.write<u64>(this.round);
    }

    public deserialize(ds: DataStream): void {
        this.id = ds.read<u8>();
        this.step = ds.read<u8>();
        this.matchType = ds.read<u64>();
        this.level = ds.read<u64>();
        this.status = ds.read<boolean>();
        this.joinNum = ds.read<u64>();

        // this.fightGroup = new Array(2);
        this.fightGroup = ds.readComplexVector<GroupParam>();

        // for joinList
        // this.joinList = new Map<account_name, JoinUser>();
        let len: u32 = <u32>ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let acnt = ds.read<account_name>();
            let joinUser = new JoinUser(0, new GenType(), 0);
            joinUser.deserialize(ds);
            this.joinList.set(acnt, joinUser);
        }
        // for guessList
        this.guessList.deserialize(ds);
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

let MatchInfoTable: u64 = NAME("hd.matches");
let MatchInfoTableScope: u64 = NAME("mat.scope");

class MatchBase implements Serializable {
    // match id
    match_id: u64 = 0;

    // 报名费
    regfees: Asset[] = [
        new Asset(200000, SYS), // 20.0000 SYS
        new Asset(200000, SYS),
        new Asset(200000, SYS),
        new Asset(200000, SYS),
        new Asset(200000, SYS)
    ];

    // 奖励系数
    rewardMultiple: u64[] = [100, 100, 100, 100, 100];

    // match limit num
    // fightLimit: u64 = 16;
    // awardLimit: u64 = 16;
    // groupLimit: u64 = 16;
    // joinLimit: u64[] = [32, 32, 32, 32, 32];

    // TEST CASE
    joinLimit: u64[] = [4, 4, 4, 4, 4];
    fightLimit: u64 = 2;
    awardLimit: u64 = 2;
    groupLimit: u64 = 2;
    // 竞猜上下限
    // TODO(liangqin): fee的大小需要确定
    guessFeeMin: Asset = new Asset(100000, SYS); // 10.0000 SYS
    guessFeeMax: Asset = new Asset(100000000, SYS); // 10000.0000 SYS

    matchList: Map<u64, MatchInfo> = new Map<u64, MatchInfo>();

    // 报名等级限制, match_level => gene_limit
    genLimit: Map<u64, u64[/*2*/]> = new Map<u64, u64[]>();

    // 称号个数冷却时间
    fightCooldowns: u64[] = [
        seconds(1).toSeconds(),
        seconds(2).toSeconds(),
        seconds(3).toSeconds(),
        seconds(4).toSeconds(),
        seconds(5).toSeconds(),
        seconds(6).toSeconds(),
        seconds(7).toSeconds(),
        seconds(8).toSeconds(),
        seconds(9).toSeconds(),
    ];
    // fightCooldowns: u64[] = [
    //     hours(4).toSeconds(),
    //     hours(8).toSeconds(),
    //     hours(12).toSeconds(),
    //     hours(16).toSeconds(),
    //     days(1).toSeconds(),
    //     days(2).toSeconds(),
    //     days(3).toSeconds(),
    //     days(3).toSeconds(),
    //     days(7).toSeconds()
    // ];
    // DragonCore contract
    master: DragonCore;

    public serialize(ds: DataStream): void {
        ds.write<u64>(this.match_id);
        ds.writeComplexVector<Asset>(this.regfees);
        ds.writeVector<u64>(this.rewardMultiple);
        ds.write<u64>(this.fightLimit);
        ds.write<u64>(this.awardLimit);

        ds.writeVector<u64>(this.joinLimit);
        ds.write<u64>(this.groupLimit);
        this.guessFeeMin.serialize(ds);
        this.guessFeeMax.serialize(ds);
        ds.writeVector<u64>(this.fightCooldowns);


        // for mathList
        let matchids = this.matchList.keys();
        let matchinfos = this.matchList.values();
        ds.writeVarint32(matchids.length);
        for (let i: i32 = 0; i < matchids.length; i++) {
            ds.write<u64>(matchids[i]);
            matchinfos[i].serialize(ds);
        }

        // for genLimits
        let matchLevels = this.genLimit.keys();
        let matchLimits = this.genLimit.values();
        ds.writeVarint32(matchLevels.length);
        for (let i: i32 = 0; i < matchLevels.length; i++) {
            ds.write<u64>(matchLevels[i]);
            ds.writeVector<u64>(matchLimits[i]);
        }
    }

    public deserialize(ds: DataStream): void {
        this.match_id       = ds.read<u64>();
        this.regfees        = ds.readComplexVector<Asset>();
        this.rewardMultiple = ds.readVector<u64>();
        this.fightLimit     = ds.read<u64>();
        this.awardLimit     = ds.read<u64>();

        this.joinLimit = ds.readVector<u64>();
        this.groupLimit     = ds.read<u64>();
        this.guessFeeMin.deserialize(ds);
        this.guessFeeMax.deserialize(ds);
        this.fightCooldowns = ds.readVector<u64>();

        // for matchList
        let len = <u32>ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let mid = ds.read<u64>();
            let minfo = new MatchInfo();
            minfo.deserialize(ds);

            this.matchList.set(mid, minfo);
        }

        // for genLimit
        len = <u32>ds.readVarint32();
        for (let i: u32 = 0; i < len; i++) {
            let ml = ds.read<u64>();
            let mlimit = ds.readVector<u64>();

            this.genLimit.set(ml, mlimit);
        }
    }

    public primaryKey(): u64 {
        return <u64>0;
    }

    public saveToDBManager(): void {
        let matchdb: DBManager<MatchBase> = new DBManager<MatchBase>(MatchInfoTable, HyperDragonContract, MatchInfoTableScope);
        let existing = matchdb.exists(this.primaryKey());

        if (existing) {
            matchdb.modify(HyperDragonContract, this);
        } else {
            matchdb.emplace(HyperDragonContract, this);
        }
    }

    public loadFromDBManager(): void {
        let matchdb: DBManager<MatchBase> = new DBManager<MatchBase>(MatchInfoTable, HyperDragonContract, MatchInfoTableScope);
        Log.s("match.loadFromDBManager  1").flush();
        let key = this.primaryKey();
        Log.s("match.loadFromDBManager  2 key = ").i(key).flush();
        let existing = matchdb.get(key, this);
        Log.s("match.loadFromDBManager  3").flush();
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
        ultrain_assert(_id > this.match_id, "startMatch failed, id = " + intToString(_id) + " must be larger than this.match_id = " + intToString(this.match_id));

        this.match_id = _id;
        let matchInfo = new MatchInfo();
        matchInfo.step = 0;
        matchInfo.matchType = _matchType;
        matchInfo.level = _level;
        matchInfo.status = true;
        matchInfo.joinNum = 0;
        matchInfo.fightIndex = 0;
        matchInfo.groupIndex = 0;
        matchInfo.awardIndex = 0;
        matchInfo.awardKey = 0;
        matchInfo.fightGroup = [];
        matchInfo.winner = [];
        matchInfo.round = 1;

        this.matchList.set(this.match_id, matchInfo);

        let level: i32 = <i32>_level - 1;
        let reward_factor = this.joinLimit[level] * this.rewardMultiple[level] / 10000;
        let re1st = this.regfees[level].multi(15 * reward_factor);
        let re2nd = this.regfees[level].multi(10 * reward_factor);
        let re3rd = this.regfees[level].multi(5 * reward_factor);

        // event MatchStart(matchId: u64, matchType: u64, matchLevel: u64, maxNum: u64, regfee: u64, awardfee_1st: u32, awardfee_2nd: u32, awardfee_3rd: u32);
        emit("MatchStart", EventObject.setInt("matchId", _id)
                                      .setInt("matchType", _matchType)
                                      .setInt("matchLevel", _level)
                                      .setInt("maxNum", this.joinLimit[level])
                                      .setInt("regfee", this.regfees[level].amount)
                                      .setInt("awardfee_1st", re1st.amount)
                                      .setInt("awardfee_2st", re2nd.amount)
                                      .setInt("awardfee_3st", re3rd.amount)
                                    );
        if (DEBUG) {
            matchInfo.prints("StartMatch");
        }
    }

    public joinMatch(joinUser: account_name, dragonId: u64, gen: GenType, titles: u64, fee: Asset): void {
        this._escrow(joinUser, dragonId);

        let matchInfo = this.matchList[this.match_id];
        if (DEBUG) {
            matchInfo.prints("JoinMatch before " + RN(joinUser));
        }
        ultrain_assert(fee.gte(this.regfees[<i32>(matchInfo.level - 1)]), "supplied fee is small than the lower limit.");
        // ultrain_assert(this.isCanJoin(joinUser), "can not join this match.");

        let generation = this.getDragonGeneration(dragonId);
        let level = matchInfo.level - 1;
        if (this.genLimit.contains(level)) {
            let gemLimit: u64[/* 2 */] = this.genLimit.get(level);
            if (gemLimit[1] > 0) {
                ultrain_assert(generation >= gemLimit[0] && generation <=gemLimit[1], "the dragon gene is not between the gene limit.");
            }
        }
        let juser = new JoinUser(dragonId, gen, titles);
        matchInfo.joinList.set(joinUser, juser);

        matchInfo.joinNum += 1;
        matchInfo.winner.push(joinUser);

        // event JoinMatch(matchId: u64, _joinUser: account_name, _dragon_id: u64);
        let eobj = EventObject.setInt("matchId", this.match_id).setInt("joinUser", joinUser).setInt("dragon_id", dragonId);
        emit("JoinMatch", eobj);

        if (matchInfo.joinNum >= this.joinLimit[<i32>this.match_id]) {
            matchInfo.step = 1;
            // event CompleteJoin(matchId: u64);
            eobj = EventObject.setInt("matchId", this.match_id);
            emit("CompleteJoin", eobj);
        }

        if (DEBUG) {
            matchInfo.prints("JoinMatch after " + RN(joinUser));
        }
    }

    /*@action*/public guess(betid: u64, dragonId: u64, val: Asset): void {
        ultrain_assert(val.amount >= this.guessFeeMin.amount && val.amount <= this.guessFeeMax.amount, "bet value is invalid.");
        // ultrain_assert(val >= this.guessFeeMin && val <= this.guessFeeMax, "bet value is invalid.");

        let matchInfo = this.matchList.get(this.match_id);

        ultrain_assert(matchInfo.step == 2, "can not bet this match now.");

        let bet = new BetId(betid);
        let fIndex = bet.groupIndex;
        let round = bet.round;

        ultrain_assert(matchInfo.round == round, "round dismatched for the match and betid.");
        ultrain_assert(fIndex >= 0 && fIndex < matchInfo.fightGroup.length, "selected group index is overflow.");

        let guessUser = new GuessUser(Action.sender, val);
        let d1id = matchInfo.joinList.get(matchInfo.fightGroup[fIndex].p1).dragon_id;
        let d2id = matchInfo.joinList.get(matchInfo.fightGroup[fIndex].p2).dragon_id;

        ultrain_assert(d1id == dragonId || d2id == dragonId, "the dragon did not join this group.");

        let guessInfo = matchInfo.guessList.get(betid).get(dragonId).guesser;
        guessInfo.totalMoney.amount += val.amount;
        guessInfo.guessUserList.push(guessUser);

        let guessNode = matchInfo.guessList.get(betid);
        let dra1Amount = guessNode.get(d1id).guesser.totalMoney.amount;
        let dra2Amount = guessNode.get(d2id).guesser.totalMoney.amount;
        let rate1 = dra1Amount > 0
                    ? 9500 * (dra1Amount + dra2Amount)/dra1Amount
                    : 19500;
        let rate2 = dra2Amount > 0
                    ? 9500 * (dra1Amount + dra2Amount)/dra2Amount
                    : 19500;

        rate1 = rate1 < 10000 ? 10000 : rate1;
        rate2 = rate2 < 10000 ? 10000 : rate2;

        // event GuessDragon(matchId: u64, round: u64, betId: u64, betuser: account_name, dragonId: u64, betfee: u64, rate1: u6, rate2: u64);
        emit("GuessDragon", EventObject.setInt("matchId", this.match_id)
                                       .setInt("round", <u64>round)
                                       .setInt("betId", betid)
                                       .setInt("betuser", guessUser.beter)
                                       .setInt("dragonId", dragonId)
                                       .setInt("betfee", val.amount)
                                       .setInt("rate1", rate1)
                                       .setInt("rage2", rate2));
    }

    /*@action*/public nextStep(nonce: u64): void {
        let matchInfo = this.matchList.get(this.match_id);

        if (true) {
            matchInfo.prints("nextStep start");
        }

        ultrain_assert(matchInfo.status, "match status is false.");
        ultrain_assert(matchInfo.step > 0, "match step is 0");

        if (matchInfo.step == 1) {
            this.giveGroup(nonce);
        } else if (matchInfo.step == 2 || matchInfo.step == 3) {
            this.fighting(nonce);
        } else if (matchInfo.step == 4) {
            this.sendReward();
        }

        if (true) {
            matchInfo.prints("nextStep end");
        }
    }

    /*@action*/public getEntryFee(): Asset {
        let id: i32 = <i32>this.match_id;
        let lidx: i32 = <i32>this.matchList[id].level - 1;
        return this.regfees[lidx];
    }

    /*@action*/public withdrawBalance(): void {
        // 转帐
        let msgSender = Action.sender;
        ultrain_assert(msgSender == MatchAddress || msgSender == HyperDragonContract, "can not withdraw balance");
        let matchContract = new Account(MatchAddress);
        let balance = matchContract.balance;
        matchContract.transfer(HyperDragonContract, balance, "match withdraw balance");
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
            for (let i:i32 = 0; i < matchInfo.fightGroup.length; i++) {
                ad1 = matchInfo.fightGroup[i].p1;
                ad2 = matchInfo.fightGroup[i].p2;
                did1 = matchInfo.joinList.get(ad1).dragon_id;
                did2 = matchInfo.joinList.get(ad2).dragon_id;
                if (this.master.ownerOf(did1) == MatchAddress) {
                    this.transfer(ad1, did1);
                } else if (this.master.ownerOf(did2) == MatchAddress) {
                    this.transfer(ad2, did2);
                }
            }
        } else { // 从winner中退还
            for (let i: i32 = 0; i < matchInfo.winner.length; i++) {
                ad1 = matchInfo.winner[i];
                did1 = matchInfo.joinList.get(ad1).dragon_id;

                if (this.master.ownerOf(did1) == MatchAddress) {
                    this.transfer(ad1, did1);
                }
            }
        }

        matchInfo.status = false;
    }

    private transfer(receiver: account_name, tokenId: u64): void {
        this.master.transferByBid(MatchAddress, receiver, tokenId);
    }

    private _escrow(joinUser: account_name, dragonId: u64): void {
        this.master.transferFrom(joinUser, MatchAddress, dragonId);
    }

    /*@action*/public isCanJoin(joinUser: account_name): boolean {
        let has = this.matchList.contains(this.match_id);
        if (!has)  return false;

        let matchInfo = this.matchList.get(this.match_id);
        if (matchInfo.status == false) return false;

        has = matchInfo.joinList.contains(joinUser);
        if (has && (matchInfo.joinList.get(joinUser).dragon_id != 0)) return false; // can not join again.
        let level = <i32>(matchInfo.level - 1);
        if (matchInfo.joinNum >= this.joinLimit[level]) return false;
        return true;
    }

    private getDragonGeneration(dragonId: u64): u64{
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

        let seed = nonce;
        let r: i32;
        let idx: i32 = 0;

        for (let i: u64 = matchInfo.groupIndex; i < groupEnd; i++) {
            r = <i32>(seed % (num - 2*i));
            a1 = matchInfo.winner[r];
            idx = <i32>(num - 2*i - 1);
            matchInfo.winner[r] = matchInfo.winner[idx];
            matchInfo.winner[idx] = 0;
            seed /= 10;

            r = <i32>(seed % (num - 2*i - 1));
            a2 = matchInfo.winner[r];
            idx = <i32>(num - 2*i - 2);
            matchInfo.winner[r] = matchInfo.winner[idx];
            matchInfo.winner[idx] = 0;

            matchInfo.fightGroup.push(new GroupParam(a1, a2));
            // event CreateGroup(matchId: U64, dragonId1: u64, dragonId2: u64, round: u64, betid: u64, left_cn: u64);
            emit("CreateGroup", EventObject
                .setInt("matchId", this.match_id)
                .setInt("dragonId1", matchInfo.joinList.get(a1).dragon_id)
                .setInt("dragonId2", matchInfo.joinList.get(a2).dragon_id)
                .setInt("round", matchInfo.round)
                .setInt("betId", betId + (i << 4))
                .setInt("left_cnt", num));
            seed /= 10;
        }

        if (groupEnd < num / 2) {
            matchInfo.groupIndex += this.groupLimit;
            // event MatchPause(matchId: u64);
            emit("MatchPause", EventObject.setInt("matchId", this.match_id));
        } else {
            matchInfo.groupIndex = num/2;
            matchInfo.step = 2;
            matchInfo.winner = [];
            // event CompleteGroup(matchId: u64, round: u64);
            emit("CompleteGroup", EventObject.setInt("matchId", this.match_id).setInt("round", matchInfo.round));
        }

        Return<u64>(betId);
    }

    private fighting(nonce: u64): void {

        let matchInfo = this.matchList[this.match_id];
        matchInfo.step = 3;
        // Log.s("A  1").flush();
        let betId = <u64>(this.match_id << 12) + <u64>matchInfo.round;
        let thirdWin: u64[] = [];
        let fightEnd: u64 = <u64>matchInfo.fightGroup.length > (matchInfo.fightIndex + this.fightLimit) ?
                            matchInfo.fightIndex + this.fightLimit : <u64>matchInfo.fightGroup.length;
        //  Log.s("A  2, fightEnd = ").i(fightEnd).s(",fightGroup.length = ").i(matchInfo.fightGroup.length).flush();
        for (let i: i32 = <i32>matchInfo.fightIndex; i < (<i32>fightEnd); i++) {
            let id = <u64>(betId + (i << 4));
            // Log.s("A  3, i = ").i(i).flush();
            let one = matchInfo.fightGroup[i].p1;
            let two = matchInfo.fightGroup[i].p2;
            // Log.s("A31 fightwith : " + RN(one) + ", " + RN(two)).flush();
            let result = this.fightWithOther(id, one, two, nonce);
            // Log.s("A 41").flush();
            // event DragonLose(uint256 matchId, uint256 round,uint256 dragonId);
            // event DragonVictory(uint256 matchId, uint256 round,uint256 betid, uint256 dragonId);
            // event BetOver(uint256 match_id, uint256 round, uint256 betid);

            emit("DragonLose", EventObject.setInt("matchId", this.match_id).setInt("round", matchInfo.round)
                .setInt("dragonId", matchInfo.joinList.get(result.loser).dragon_id));
            emit("DragonVictory", EventObject.setInt("matchId", this.match_id).setInt("round", matchInfo.round)
                .setInt("dragonId", matchInfo.joinList.get(result.loser).dragon_id));
            emit("BetOver", EventObject.setInt("matchId", this.match_id).setInt("round", matchInfo.round)
                .setInt("betid", id));
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
            emit("SemifinalResult", EventObject.setInt("matchId", this.match_id).setInt("dragonid_3", thirdWin[0]).setInt("dragonId_4", thirdWin[1]));
        }

        emit("MatchPause", EventObject.setInt("matchId", this.match_id));
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
            emit("FinalResult", EventObject.setInt("matchId", this.match_id).setInt("dragonId_1", dra2.dragon_id).setInt("dragonId_2", dra1.dragon_id));
            // 冠亚军奖励
            Asset.transfer(MatchAddress, result.winner, new Asset(1500 * rewardBase, SYS), "winner reward");
            Asset.transfer(MatchAddress, result.loser, new Asset(1000 * rewardBase, SYS), "2nd winner reward");
        }

        if (matchInfo.fightGroup.length == 2) {
            this.master.setTitles(dra1.dragon_id, this.match_id, 3);
            Asset.transfer(MatchAddress, result.loser, new Asset(500 * rewardBase, SYS), "2rd winner reward");
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
            let fg: GroupParam = matchInfo.fightGroup[i];
            if (matchInfo.winner[i] == fg.p1) {
                winDragon = matchInfo.joinList.get(fg.p1).dragon_id;
                loseDragon = matchInfo.joinList.get(fg.p2).dragon_id;
            } else {
                loseDragon = matchInfo.joinList.get(fg.p1).dragon_id;
                winDragon = matchInfo.joinList.get(fg.p2).dragon_id;
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
                emit("NextRound", EventObject.setInt("matchId", this.match_id).setInt("round", matchInfo.round));
                // event RoundOver(matchId: u64, round: u64);
                emit("RoundOver", EventObject.setInt("matchId", this.match_id).setInt("round", matchInfo.round - 1));
                matchInfo.groupIndex = 0;
                matchInfo.fightIndex = 0;
                matchInfo.awardIndex = 0;
                matchInfo.awardKey = 0;
            } else {
                matchInfo.status = false;
                // event CompleteMatch(matchId: u64);
                emit("CompleteMatch", EventObject.setInt("matchId", this.match_id));
            }
            matchInfo.fightGroup = [];
        }
    }

    private guessLoseNotice(betid: u64, dragonId: u64): void {
        let matchInfo = this.matchList.get(this.match_id);
        let limit: u64;

        let list = matchInfo.guessList.get(betid).get(dragonId).guesser.guessUserList;
        limit = list.length > 200 ? 200 : list.length;

        for (let i: u64 = 0; i < limit; i++) {
            // event GuessLose(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64);
            emit("GuessLoss", EventObject.setInt("user", list[i].beter).setInt("price", list[i].money.amount)
                .setInt("dragonId", dragonId).setInt("betId", betid).setInt("matchId", this.match_id));
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

        if (winGuessInfo.guesser.guessUserList.length > 0) {
            rate = winGuessInfo.guesser.totalMoney.amount > 0 ?
                <u64>(9500 * (winGuessInfo.guesser.totalMoney.amount + loseGuessInfo.guesser.totalMoney.amount) / winGuessInfo.guesser.totalMoney.amount) :
                9500;

            rate = rate < 10000 ? 10000 : rate;
            dragonId = winDragon;
        } else {
            // 获胜方没有竞猜 返回
            if (loseGuessInfo.guesser.guessUserList.length > 0) {
                rate = 10000;
                dragonId = loseDragon;
            } else {
                matchInfo.awardKey += 1;
            }
        }

        if (dragonId > 0) {
            let betUsers = matchInfo.guessList.get(betid).get(dragonId).guesser.guessUserList;
            awardEnd = <u64>betUsers.length > matchInfo.awardIndex + this.awardLimit ?
                    matchInfo.awardIndex + this.awardLimit :
                    <u64>betUsers.length;
            for (let i = <i32>matchInfo.awardIndex; i < <i32>awardEnd; i++) {
                money = (rate * betUsers[i].money.amount) / 10000;
                Asset.transfer(MatchAddress, betUsers[i].beter, new Asset(money, SYS), "better transfer.");

                // 竞猜获胜 触发event
                if (dragonId == winDragon) {
                    // event GuessWin(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64, money: u64);
                    emit("GuessWin", EventObject.setInt("user", betUsers[i].beter).setInt("price", betUsers[i].money.amount)
                        .setInt("dragonId", dragonId).setInt("betId", betid).setInt("matchId", this.match_id).setInt("money", money));
                } else {
                    // event GuessLoseReturn(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64, money: u64);
                    emit("GuessLossReturn", EventObject.setInt("user", betUsers[i].beter).setInt("price", betUsers[i].money.amount)
                        .setInt("dragonId", dragonId).setInt("betId", betid).setInt("matchId", this.match_id).setInt("money", money));
                }
            }

            // 未发完 继续
            if (awardEnd < <u64>betUsers.length) {
                matchInfo.awardIndex += this.awardLimit;
                // event MatchPause(matchId: u64);
                emit("MatchPause", EventObject.setInt("matchId", this.match_id));
            } else {
                matchInfo.awardIndex = 0;
                matchInfo.guessList.get(betid).remove(dragonId);
                matchInfo.awardKey += 1;
            }
        }
    }
}