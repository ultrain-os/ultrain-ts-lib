import "allocator/arena";
import { Contract } from "../../src/contract";
import { Log } from "../../src/log";
import { RNAME, NAME } from "../../src/account";
import { Asset } from "../../src/asset";
import { NEX } from "../../lib/name_ex";

const Reward_None: u8 = 0;
const Reward_waiting: u8 = 1;
const Reward_done: u8 = 2;

class Gamer implements Serializable{
    account: account_name;
    reward_status: u8;

    primaryKey(): u64 { return this.account; }
}

@database(Gamer, "gamer")
class MasterContract extends Contract {
    db: DBManager<Gamer>;
    constructor(code: u64) {
        super(code);
        this.db = new DBManager<Gamer>(NAME("gamer"), this.receiver, NAME("gamer"));
    }

    private startGame(from: account_name): void {
        let joined = this.db.exists(from);
        ultrain_assert(!joined, RNAME(from) + " has joined this game yet.");
        Log.s("欢迎").s(RNAME(from)).s("加入游戏").flush();

        let gamer = new Gamer();
        gamer.account = from;
        gamer.reward_status = Reward_None;

        this.db.emplace(this.receiver, gamer);
    }

    // 接收utrio.token的transfer信息，无论自己是作为from还是to。
    @action
    transfer(from: account_name, to: account_name, val: Asset, memo: string): void {
        // from通过向this.receiver转帐的方式，申请加入了游戏
        if (from != this.receiver && to == this.receiver) {
            Log.s(RNAME(from)).s(" require to join this game.").flush();
            // ......
            // 其它的一些检查逻辑都没问题，开始游戏逻辑
            this.startGame(from);
        }
        // 从this.receiver帐号向其它人转帐
        else if ( from == this.receiver && to != this.receiver) {
            let player = new Gamer();
            let reward = this.db.get(to, player);
            // 如果不是向游戏获胜者转帐，将不被允许
            // 这意味着没有人可以从游戏帐号中转移资产
            ultrain_assert(reward && player.reward_status == Reward_waiting, RNAME(to) + " is not win the game. Why you get reward??");
            // 更新发奖状态
            player.reward_status = Reward_done;
            this.db.modify(this.receiver, player);

            Log.s(RNAME(to)).s(" get rewards. ").flush();
        }
        // 其它情况，一律不允许转帐，不接受转入，也不接受转出
        else {
            ultrain_assert(false, "Do not accept transfer operation for any other account!");
        }
    }

    // 开始发奖
    @action
    reveal(): void {
        let cursor = this.db.cursor();
        ultrain_assert(cursor.count > 0, "No player joined this game.");
        // 作为测试，随便挑一个发奖
        cursor.first();
        let gamer = cursor.get();

        // 设置中奖人的状态，在transfer中检查是否允许转帐。
        gamer.reward_status = Reward_waiting;
        this.db.modify(this.receiver, gamer);
        // 开始转帐给gamer.account，10.0000 UGAS
        Asset.transfer(this.receiver, gamer.account, new Asset(100000), "Congratulation! you win this game!");
    }

    // 过滤action接收原则，接收utrio.token的transfer事件, 如果不提供这个filter，将不能收到utrio.token的转帐通知
    public filterAction(originalReceiver: u64): boolean {
        // 本合约的transfer方法不接受直接调用，也不接受inline方式的调用。
        // 但是接受utrio.token的transfer方法
        return (originalReceiver == this.receiver && this.action != NEX("transfer")) || (originalReceiver == NAME("utrio.token") && this.action == NEX("transfer"));

        // 可以使用系统默认的filter代替上面的判断。
        // return Contract.filterAcceptTransferTokenAction(this.receiver, originalReceiver, this.action);
    }
}