import "allocator/arena";
import { Contract } from "../../src/contract";
import { Log } from "../../src/log";
import { RNAME, NAME } from "../../src/account";
import { Asset } from "../../src/asset";
class Gamer implements Serializable{
    @primaryid
    account: account_name;
    welcome: string;
    info: string[];
    count: u32;
    nor: string;


    printme(): void {
        Log.s("Gamer: ").s(RNAME(this.account)).s(", welcome: " + this.welcome).s(", count = ").i(this.count).s(", nor = ").s(this.nor).flush();
        for (let i = 0; i < this.info.length; ++i) {
            Log.s(this.info[i]).flush();
        }
    }
}

@database(Gamer, "gamer")
class MasterContract extends Contract {
    db: DBManager<Gamer>;
    constructor(code: u64) {
        super(code);
        this.db = new DBManager<Gamer>(NAME("gamer"), this.receiver, NAME("gamer"));
    }

    private startGame(from: account_name): void {
        Log.s("欢迎").s(RNAME(from)).s("加入游戏").flush();
        let gamer = new Gamer();
        gamer.account = from;
        gamer.welcome = "欢迎" + RNAME(from) + "加入游戏!";
        gamer.info.push(RNAME(from) + "加入游戏了!");
        gamer.info.push("屌丝们热烈欢迎！");
        gamer.info.push("this is a third welcome bar.");
        gamer.count = 100;
        gamer.nor = "this is a normal ascii string.";
        this.db.emplace(this.receiver, gamer);
    }

    @action
    transfer(from: account_name, to: account_name, val: Asset, memo: string): void {
        ultrain_assert(from != this.receiver && to == this.receiver, "this is a fake transfer action.");
        this.startGame(from);
    }

    public filterAction(originalReceiver: u64): boolean {
        return Contract.filterAcceptTransferTokenAction(this.receiver, originalReceiver, this.action);
    }

    @action
    show(account: account_name): void {
        let gamer = new Gamer();
        this.db.get(account, gamer);
        gamer.printme();
    }
}