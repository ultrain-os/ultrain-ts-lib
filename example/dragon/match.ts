import { env as Action } from "../../internal/action.d";
import { ultrain_assert } from "../../src/utils";
import { Asset, StringToSymbol } from "../../src/asset";
import { Map } from "../../src/map";
import { Microseconds, hours, days } from "../../lib/time";
import { Pausable } from "./pausable";

const SYM = StringToSymbol(4, "UGS");

class JoinUser {
    dragon_id: u64;
    gen: GenType;
    titles: u64;

    constructor(dragon_id: u64, gen: GenType, titles: u64) {
        this.dragon_id = dragon_id;
        this.gen       = gen;
        this.titles    = titles;
    }
}

class GuessUser {
    beter: account_name;
    money: u64;
}

class GuessInfo {
    totalMoney: u64;
    guessUserList: GuessUser[];
}

type GuessListValue = Map<u64, GuessInfo>;
class MatchInfo {
    // 0: 开启比赛 1：报名结束 2：竞猜阶段 3：战斗 4：发奖 5：比赛结束
    step: u8;
    matchType: u64;
    level: u64;
    status: boolean;
    joinNum: u64;
    fightGroup: account_name[2][];
    joinList: Map<account_name, JoinUser>;
    guessList: Map<u64, GuessListValue>;
    winner: account_name[];
    fightIndex: u64;
    groupIndex: u64;
    awardIndex: u64;
    awardKey: u64;
    round: u64;
}


class MatchBase extends Pausable {
    // match id
    match_id: u64 = 0;

    // 报名费
    regfees: Asset[] = [
        new Asset(20, SYM),
        new Asset(20, SYM),
        new Asset(20, SYM),
        new Asset(20, SYM),
        new Asset(20, SYM)
    ];

    // 奖励系数
    rewardMultiple: u64[] = [100, 100, 100, 100, 100];

    fightLimit: u64 = 16;
    awardLimit: u64 = 16;
    groupLimit: u64 = 16;

    // 竞猜上下限
    // TODO(liangqin): fee的大小需要确定
    guessFeeMin: Asset = new Asset(10, SYM); // 10.0000 UGS
    guessFeeMax: Asset = new Asset(10000, SYM); // 10000.0000 UGS

    matchList: Map<u64, MatchInfo>;
    // match limit num
    joinLimit: u64[] = [32, 32, 32, 32, 32];

    // 报名等级限制, match_level => gene_limit
    genLimit: Map<u64, u64[/*2*/]>;

    // 称号个数冷却时间
    fightCooldowns: Microseconds[] = [
        hours(4),
        hours(8),
        hours(12),
        hours(16),
        days(1),
        days(2),
        days(3),
        days(3), // FIXME(liangqin): 3 days for twice?????
        days(7)
    ];

    // event MatchStart(matchId: u64, matchType: u64, matchLevel: u64, maxNum: u64, regfee: u64, awardfee_1st: u32, awardfee_2nd: u32, awardfee_3rd: u32);
    // event JoinMatch(matchId: u64, _joinUser: account_name, _dragon_id: u64);
    // event DragonLose(matchid: u64, round: u64, dragonId: u64);
    // event DragonVictory(matchId: u64, round: u64, betid: u64, dragonId: u64);
    /*打完一轮，分完组 */
    // event CompleteGroup(matchId: u64, round: u64);
    // event CompleteJoin(matchId: u64);
    // event CreateGroup(matchId: U64, dragonId1: u64, dragonId2: u64, round: u64, betid: u64, left_cn: u64);
    // event CompleteMatch(matchId: u64);
    // event GuessDragon(matchId: u64, round: u64, betId: u64, betuser: account_name, dragonId: u64, betfee: u64, rate1: u6, rate2: u64);
    // event NextRound(matchId: u64, round: u64);
    // event RoundOver(matchId: u64, round: u64);
    // event BetOver(matchId: u64, round: u64, betId: u64);

    // event GuessWin(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64, money: u64);
    // event GuessLose(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64);
    // event SemifinalResult(matchId: u64, dragonId_3: u64, dragonId_4: u64);
    // event FinalResult(matchId: u64, dragonId_1: u64, dragonId_2: u64);

    // event MatchPause(matchId: u64);
    // event GuessLoseReturn(user: account_name, price: u64, dragonId: u64, betId: u64, matchId: u64, money: u64);

}

class FightResult {
    winner: account_name;
    loser : account_name;
}

export class MatchCore extends MatchBase {

    public startMatch(_id: u64, _matchType: u64, _level: u64): void {
        this.whenNotPaused();
        ultrain_assert(_id > this.match_id, "startMatch failed, _id is less than match_id");
        // FIXME(liangqin): Is it useless?? this.owner is always the current_sender.
        ultrain_assert(Action.current_sender() == this.owner, "startMatch failed, only owner can start match.");

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

        let level = _level - 1;
        let reward_factor = this.joinLimit[level] * this.rewardMultiple[level] / 10000;
        let re1st = this.regfees[level].multi(15 * reward_factor);
        let re2nd = this.regfees[level].multi(10 * reward_factor);
        let re3rd = this.regfees[level].multi(5 * reward_factor);

        // emit MatchStart(_id, _matchType, _level, this.joinLimits[level], this.regfees[level], re1st, re2nd, re3rd);
    }

    joinMatch(joinUser: account_name, dragonId: u64, gen: GenType, titles: u64, fee: Asset): void {
        this.whenNotPaused();
        this._escrow(joinUser, dragonId);

        let matchInfo = this.matchList[this.match_id];
        ultrain_assert(fee >= this.regfees[matchInfo.level - 1], "supplied fee is small than the lower limit.");
        ultrain_assert(this.isCanJoin(joinUser), "can not join this match.");

        let gene = this.getDragonGene(dragonId);
        let gemLimit: u64[2] = this.genLimit.get(matchInfo.level);
        if (gemLimit[1] > 0) {
            ultrain_assert(gene >= gemLimit[0] && gene <=gemLimit[1], "the dragon gene is not between the gene limit.");
        }

        let juser = new JoinUser(dragonId, gen, titles);
        matchInfo.joinList.set(joinUser, juser);

        matchInfo.joinNum += 1;
        matchInfo.winner.push(joinUser);

        // emit JoinMatch(this.match_id, joinUser, dragonId);

        if (matchInfo.joinNum >= this.joinLimit[this.match_id]) {
            matchInfo.step = 1;
            // emit CompleteJoin(this.match_id);
        }
    }

    guess(betid: u64, dragonId: u64): void {
        this.whenNotPaused();
    }

    nextStep(nonce: u32): void {
        this.whenNotPaused();
    }

    getEntryFee(): Asset {
        return this.regfees[this.matchList[this.match_id].level - 1];
    }

    withdrawBalance(): void {}

    setFightLimit(limit: u64): void {
        this.onlyOwner();
        this.fightLimit = limit;
    }

    setAwardLimit(limit: u64): void {
        this.onlyOwner();
        this.awardLimit = limit;
    }

    setGroupLimit(limit: u64): void {
        this.onlyOwner();
        this.groupLimit = limit;
    }

    setJoinLimit(joinLimit: u64[]): void {
        this.onlyOwner();
        ultrain_assert(joinLimit.length == this.joinLimit.length, "join limit array length is not same.");
        this.joinLimit = [];
        for (let i: u32 = 0; i < joinLimit.length; i++) {
            this.joinLimit.push(joinLimit[i]);
        }
    }

    setRegfees(regfees: Asset[]): void {
        this.onlyOwner();
        ultrain_assert(regfees.length == this.regfees.length, "regfees limit array length is not same.");
        this.regfees = [];
        for (let i: u32 = 0; i < regfees.length; ++i) {
            this.regfees.push(regfees[i]);
        }
    }

    setRewardMultiple(rewardMultiple: u64[]): void {
        this.onlyOwner();
        ultrain_assert(rewardMultiple.length == this.rewardMultiple.length, "reward multiple limit array length is not same.");
        this.rewardMultiple = [];
        for (let i: u32 = 0; i < rewardMultiple.length; i++) {
            this.rewardMultiple.push(rewardMultiple[i]);
        }
    }

    setGenLimit(level: u64, limit: u64[]): void {
        this.onlyOwner();
        this.genLimit.set(level, limit);
    }

    dissolve(matchId: u64): void {
        this.onlyOwner();
        let matchInfo = this.matchList[this.match_id];
        let i: u32;
        let did1: u32;
        let did2: u32;

        let ad1: account_name;
        let ad2: account_name;

        // 分完组 从分组中退还
        if (matchInfo.step == 2 || matchInfo.step == 3) {
            // TODO(liangqin):
        } else { // 从winner中退还
            for (let i: u32 = 0; i < matchInfo.winner.length; i++) {
                ad1 = matchInfo.winner[i];
                did1: matchInfo.joinList[ad1].dragon_id;

                if (true/*dragon belongs to owner*/) { // TODO
                    this.transfer(ad1, did1);
                }
            }
        }

        matchInfo.status = false;
    }

    private transfer(receiver: account_name, tokenId: u64) {}

    private _escrow(joinUser: account_name, dragonId: u64): void {}

    public isCanJoin(joinUser: account_name): boolean {
        let matchInfo = this.matchList[this.match_id];
        if (matchInfo.status == false) return false;
        if (matchInfo.joinList[joinUser] != null && matchInfo.joinList[joinUser].dragon_id != 0) return false;
        if (matchInfo.joinNum >= this.joinLimit[matchInfo.level - 1]) return false;
        return true;
    }

    private getDragonGene(dragonId: u64): DragonGene {
        return 0;
    }

    private giveGroup(nonce: u32): void {}

    private fighting(nonce: u32): void {
        ultrain_assert(Action.current_sender() == this.owner, "only owner can run this command.");

        let winner: account_name;
        let loser: account_name;
        let matchInfo = this.matchList[this.match_id];
        matchInfo.step = 3;

        let betId = <u64>(this.match_id << 12) + <u64>matchInfo.round;
        let thirdWin: u64[] = [];
        let fightEnd: u64 = matchInfo.fightGroup.length > (matchInfo.fightIndex + this.fightLimit) ?
                            matchInfo.fightIndex + this.fightLimit : matchInfo.fightGroup.length;

        for (let i = matchInfo.fightIndex; i < fightEnd; i++) {
            // TODO(liangqin): 战胜或战败处理
        }

        if (fightEnd < matchInfo.fightGroup.length) {
            matchInfo.fightIndex += this.fightLimit;
        } else {
            matchInfo.fightIndex = matchInfo.fightGroup.length;
            matchInfo.step = 4;
        }

        if (matchInfo.fightGroup.length == 2) {
            // emit SemifinalResult(this.match_id, thirdWin[0], thirdWin[1]);
        }

        // emit MatchPause(this.match_id);
    }

    private fightWithOther(betid: u64, a1: account_name, a2: account_name, nonce: u32): FightResult {
        return new FightResult();
    }

    private sendReward(): void {

    }

    private guessLoseNotice(betid: u64, dragonId: u64): void {}

    private sendOne(betid: u64, winDragon: u64, loseDragon: u64): void {}
}