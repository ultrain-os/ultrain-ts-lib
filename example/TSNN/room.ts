import { Asset } from "../../src/asset";
import { ultrain_assert, intToString } from "../../src/utils";
import { Round, RoundBaseInfo, RoundStag, Cards } from "./round";
import { SYS } from "../../src/asset";
import { Action } from "../../src/action";
import { DBManager } from "../../src/dbmanager";
import { Log } from "../../src/log";
import { Return } from "../../src/return";
import { NAME } from "../../src/account";
import { now } from "../../src/time";
/**
 * 将打牌操作交给当前进行中的round处理。
 * 注意room在同一时刻只有一个对局，通过stage来表明对局轮次
 */
export class Room implements Serializable{
    /**存储一些初始化后就不变的固定信息 */
    roomInfo:   RoomInfo = new RoomInfo();
	/**当前玩家*/
	players:    Array<account_name> = new Array<account_name>();
	/**对局状态，0：待开局，-1，已结束，其他则为对应正在进行的比赛场次*/
    stage: i8 = 0;
    /**可变的房间属性信息*/
    roomDB:	DBManager<Room>;
    /**初始化后不变的房间信息 */
    roomInfoDB:	DBManager<RoomInfo>;
    /**提议解散房间的人 */
    dissolvePlayers:Array<account_name> = new Array<account_name>();
    /**记录玩家操作时间 */
    actionRecord:Array<ActionRecord> = new Array<ActionRecord>();
	/**无参构造方法，否则序列化时无法实例*/
	public constructor() {
        this.roomInfoDB = new DBManager<RoomInfo>(NAME("chaole.nn"),Action.receiver,NAME("room.info"));
        this.roomDB = new DBManager<Room>(NAME("chaole.nn"),Action.receiver,NAME("room"));
    }

    serialize(ds: DataStream): void {
        ds.writeVector<account_name>(this.players);
        ds.write<i8>(this.stage);
        ds.writeVector<account_name>(this.dissolvePlayers);
        ds.writeComplexVector<ActionRecord>(this.actionRecord);
    }

    deserialize(ds: DataStream): void {
        this.players = ds.readVector<account_name>();
        this.stage = ds.read<i8>();
        this.dissolvePlayers = ds.readVector<account_name>();
        this.actionRecord = ds.readComplexVector<ActionRecord>();
    }

    primaryKey(): u64 {
        return this.roomInfo.roomNum;
    }

    /**
     * 将房间存入数据库
     */
    public initInsertRoom():void{
        ultrain_assert(!this.roomDB.exists(this.roomInfo.roomNum),"insert.issue: room have exist. roomNum:"+intToString(this.roomInfo.roomNum)+", table:room");
        ultrain_assert(!this.roomInfoDB.exists(this.roomInfo.roomNum),"insert.issue: room have exist. roomNum:"+intToString(this.roomInfo.roomNum)+", table:room.info");
        this.roomDB.emplace(Action.sender,this);
        this.roomInfoDB.emplace(Action.sender,this.roomInfo);
    }

    private modifyRoom():void{
        this.roomDB.modify(Action.sender,this);
    }

    /**
     * 获取数据库数据填充到本对象
     * @param roomNum
     */
    public getRoom(roomNum:u64):boolean{
        if(this.roomDB.get(roomNum,this)){
            return this.roomInfoDB.get(roomNum,this.roomInfo);
        }
        return false;
    }
    /**
     * 加入房间
     * @param quantity
     * @param from
     */
	public checkIn(quantity:Asset, from:u64):void{
        ultrain_assert(this.stage == 0,"stage.issue: invalid state of the room");
		ultrain_assert(quantity.getSymbol() == SYS, "token.issue: invalid symbol name");
        ultrain_assert(quantity.getAmount() >= this.roomInfo.minMoney, "token.issue: quantity is not enough. Pay at least "+intToString(this.roomInfo.minMoney));
        ultrain_assert(!this.players.includes(Action.sender),"player.issue: you are already in the room !");
		Action.requireAuth(from);
        this.players.push(from);
        if(this.roomInfo.startWay==1&&this.players.length==this.roomInfo.minPlayerToStart){
            this.start();
            return;
        }
        //TODO 输入资金
        this.modifyRoom();
        //emit("CheckIn", EventObject.set<account_name>("from",Action.sender).set<string>("money",intToString(quantity.getAmount())).set<u64>("roomNum",this.roomInfo.roomNum));
    }


    public ReturnString():void{
        Return<string>("{\"minPlayerToStar\":");
        Return<u8>(this.roomInfo.minPlayerToStart);
        Return<string>(",\"point\":");
        Return<u8>(this.roomInfo.point);
        Return<string>(",\"totalRound\":");
        Return<i8>(this.roomInfo.totalRound);
        Return<string>(",\"bidWay\":");
        Return<u8>(this.roomInfo.bidWay);
        Return<string>(",\"minMoney\":");
        Return<u64>(this.roomInfo.minMoney);
        Return<string>(",\"startWay\":");
        Return<u8>(this.roomInfo.startWay);
        Return<string>(",\"checkInNum\":");
        Return<u64>(this.roomInfo.checkInNum);
        Return<string>(",\"roomNum\":");
        Return<u64>(this.roomInfo.roomNum);
        Return<string>(",\"stage\":");
        Return<i8>(this.stage);
        Return<string>(",\"startBlock\":");
        Return<i32>(this.roomInfo.startBlock);
        Return<string>("}");
    }

    /**
     * 开始游戏
     */
    public start():void{
        ultrain_assert(((this.roomInfo.startWay==0&&Action.sender==this.players[0])||(this.roomInfo.startWay==1&&this.players.length==this.roomInfo.minPlayerToStart))&&this.players.length>1,"start.issue: you are not host or players are not enough to start !");
        ultrain_assert(this.stage!=-1,"room.issue: room is end !");
        this.stage=1;
        this.modifyRoom();
        //emit("StartRound", EventObject.set<u64[]>("player", this.players).set<u8>("round", 1).set<u64>("roomNum", this.roomInfo.roomNum));
    }

    /**
     * 设定qp
     * @param P
     * @param Q
     */
    public setPQ(P:string,Q:string):void{
        ultrain_assert(this.stage>0,"stage.issue: the room is not ready or is end");
        ultrain_assert(changetype<boolean>(this.players.includes(Action.sender)),"player.issue: you are not in room");
        let round = new Round();
        let roundBaseInfo = new RoundBaseInfo();
        roundBaseInfo.players = this.players;
        roundBaseInfo.round = this.stage;
        roundBaseInfo.roomNum = this.roomInfo.roomNum;
        roundBaseInfo.bidWay = this.roomInfo.bidWay;
        round.roundBaseInfo = roundBaseInfo;
        round.setPQ(P,Q);
    }

    /**
     * 洗牌
     * @param cards
     */
    public shuffleCard(cards:string[]):void{
        Log.s("R 1").flush();
        let round = this.getCurrentRound();
        Log.s("R 2").flush();
        this.insertAction(round);
        Log.s("R 3").flush();
        this.modifyRoom();
        Log.s("R 4").flush();
        round.shuffleCard(cards);
        Log.s("R 5").flush();
    }

    /**
     * 加密牌
     * @param cards
     */
    public encryptCard(cards:string[]):void{
        let round = this.getCurrentRound();
        this.insertAction(round);
        this.modifyRoom();
        round.encryptCard(cards);
    }

    /**
     * 上传加密秘钥
     * @param keys
     */
    public uploadEncryptKey(enkeys:string[],dekeys:string[]):void{
        let round = this.getCurrentRound();
        this.insertAction(round);
        this.modifyRoom();
        round.uploadEncryptKey(enkeys,dekeys);
    }

    /**
     * 抢庄
     */
    public scrambleBanker():void{
        let round = this.getCurrentRound();
        this.insertAction(round);
        this.modifyRoom();
        round.scrambleBanker();
    }

    /**
     * 下注
     * @param bets
     */
    public bet(bets:u8):void{
        let round = this.getCurrentRound();
        this.insertAction(round);
        this.modifyRoom();
        round.bet(bets);
    }

    /**
     * 上传最后一张秘钥
     * @param keys
     */
    public uploadLastEncryptKey(enkeys:string[],dekeys:string[]):void{
        let round = this.getCurrentRound();
        this.insertAction(round);
        this.modifyRoom();
        round.uploadLastEncryptKey(enkeys,dekeys);
    }

    /**
     * 出牌
     * @param cards
     * @param keys
     * @param flag
     */
    public discard(cards:u8[],enkeys:string[],dekeys:string[],flag:u8):void{
        let round = this.getCurrentRound();
        this.insertAction(round);
        this.modifyRoom();
        round.discard(cards,enkeys,dekeys,flag);
    }

    /**
     * 上传洗牌秘钥
     * @param key
     */
    public uploadShuffleKeys(enkey:string,dekey:string):void{
        let round = this.getCurrentRound();
        this.insertAction(round);
        this.modifyRoom();
        round.uploadShuffleKeys(enkey,dekey);
    }

    /**
     * 结算并插入数据库
     */
    public settle(points:string[]):void{
        let round = this.getCurrentRound();
        round.settle(points);
        if(round.stage==-1){
            this.stage++;
            this.modifyRoom();
        }
        if(this.stage>this.roomInfo.totalRound){
            this.stage = -1;
            this.modifyRoom();
        }


    }
    /**
     * 对局开始前退出房间
     * @param player
     */
    public quitRoom(player:account_name):void{
        ultrain_assert(player!=this.players[0],"room.issue: host can not quit room!");
        let temp:Array<account_name> = new Array<account_name>();
        for(let i = 0;i<this.players.length;i++){
            if(player!=this.players[i]){
                temp.push(this.players[i]);
            }
        }
        ultrain_assert(temp.length<this.players.length, "player.issue: you are not in room!");
        this.players = temp;
        this.modifyRoom();
    }

    /**
     * 提议解散房间
     * @param player
     */
    public proposalDissolveRoom(player:account_name):void{
        ultrain_assert(changetype<boolean>(this.players.includes(player)),"player.issue: you are not in room!");
        this.dissolvePlayers = new Array<account_name>();
        this.dissolvePlayers.push(player);
        this.modifyRoom();
    }

    /**
     * 对解散房间表决
     * @param player
     */
    public responseProposal(player:account_name):void{
        ultrain_assert(changetype<boolean>(this.players.includes(player)),"player.issue: you are not in room!");
        ultrain_assert(this.dissolvePlayers.length>0,"room.issue:no player proposal dissolve room");
        ultrain_assert(!this.dissolvePlayers.includes(player),"room.issue:you have response");
        this.dissolvePlayers.push(player);
        if(this.dissolvePlayers.length==this.players.length){
            this.stage=-1;
        }
        this.modifyRoom();
    }

    /**
     * 超时举报
     * @param player 超时玩家
     */
    public findOverTime(player:account_name):void{
        let round:Round = this.getCurrentRound();
        ultrain_assert(round.stage>0,"overtime.issue: you can not do this action before shuffle !");
        ultrain_assert(changetype<boolean>(this.players.includes(Action.sender)),"overtime.issue: you are not in the room !");
        let record:Array<ActionRecord> = this.actionRecord;
        let now:u64 = now();
        if(round.stage==record[0].action){
            // if(round.stage in [RoundStag.UPLOAD_ENCRYPT_KEY,RoundStag.UPLOAD_LAST_ENCRYPT_KEY,RoundStag.UPLOAD_SHUFFLE_KEY]){

            // }
        }else{

        }
    }

    public getShuffleCards(roundNum:u64,player:account_name):Array<string>{
        let id = this.roomInfo.roomNum*100+roundNum;
        let round = new Round();
        ultrain_assert(round.getRound(id),"round.issue: round is not exist");
        return round.playRecord.getShuffleCards().get(player);
    }

    public getEncryptCards(roundNum:u64,player:account_name):Array<string>{
        let id = this.roomInfo.roomNum*100+roundNum;
        let round = new Round();
        ultrain_assert(round.getRound(id),"round.issue: round is not exist");
        return round.playRecord.getEncryptCards().get(player);
    }

    public getShuffleEnKeys(roundNum:u64,player:account_name):string{
        let id = this.roomInfo.roomNum*100+roundNum;
        let round = new Round();
        ultrain_assert(round.getRound(id),"round.issue: round is not exist");
        return round.playRecord.getShuffleEnKeys().get(player);
    }

    public getShuffleDeKeys(roundNum:u64,player:account_name):string{
        let id = this.roomInfo.roomNum*100+roundNum;
        let round = new Round();
        ultrain_assert(round.getRound(id),"round.issue: round is not exist");
        return round.playRecord.getShuffleDeKeys().get(player);
    }

    public getEncryptKeys(roundNum:u64,player:account_name):Array<string>{
        let id = this.roomInfo.roomNum*100+roundNum;
        let round = new Round();
        ultrain_assert(round.getRound(id),"round.issue: round is not exist");
        return round.playRecord.getEncryptKeys().get(player);
    }

    public getDecryptKeys(roundNum:u64,player:account_name):Array<string>{
        let id = this.roomInfo.roomNum*100+roundNum;
        let round = new Round();
        ultrain_assert(round.getRound(id),"round.issue: round is not exist");
        return round.playRecord.getDecryptKeys().get(player);
    }

    public getBets4Player(roundNum:u64,player:account_name):u8{
        let id = this.roomInfo.roomNum*100+roundNum;
        let round = new Round();
        ultrain_assert(round.getRound(id),"round.issue: round is not exist");
        return round.playRecord.getBets4Player().get(player);
    }

    public getPlayCards(roundNum:u64,index:i32):Cards{
        let id = this.roomInfo.roomNum*100+roundNum;
        let round = new Round();
        ultrain_assert(round.getRound(id),"round.issue: round is not exist");
        let cards:Cards[] = round.playRecord.getPlayCards();
        return cards[index];
    }

    private getCurrentRound():Round{
        Log.s("G 1").flush();
        ultrain_assert(changetype<boolean>(this.players.includes(Action.sender)),"player.issue: you are not in room!");
        Log.s("G 2").flush();
        ultrain_assert(this.stage!=-1,"room.issue: room is end !");
        Log.s("G 3").flush();
        ultrain_assert(this.stage>0,"stage.issue: the room is not already or is end");
        Log.s("G 4").flush();
        let id = this.roomInfo.roomNum * 100 + <u64>this.stage;
        Log.s("G 5").flush();
        let round = new Round();
        Log.s("G 6").flush();
        let roundExist = round.getRound(id);
        ultrain_assert(roundExist,"round.issue: round is not exist");
        Log.s("G 7").flush();
        return round;
    }
    /**
     * 插入玩家操作记录，当发现list中人数已满就清空重新插入
     * @param round 对局情况
     */
    private insertAction(round:Round):void{
        if(this.actionRecord.length==this.players.length){
            this.actionRecord = new Array<ActionRecord>();
        }
        this.actionRecord.push(ActionRecord.defaultAction(round.stage));
    }
}

class ActionRecord implements Serializable{
    player:account_name;
    time:u64;
    action:i32;
    serialize(ds: DataStream): void {
        ds.write<account_name>(this.player);
        ds.write<u64>(this.time);
        ds.write<i32>(this.action);
    }
    deserialize(ds: DataStream): void {
        this.player = ds.read<account_name>();
        this.time = ds.read<u64>();
        this.action = ds.read<i32>();
    }
    primaryKey(): u64 {
        return 0;
    }

    public static defaultAction(actionCode:i32):ActionRecord{
        let action:ActionRecord = new ActionRecord();
        action.player = Action.sender;
        action.time = now();
        action.action = actionCode;
        return action;
    }
}

export class RoomInfo implements Serializable{
    /**开局玩家数*/
	minPlayerToStart: u8 = 0;
	/**底分*/
    point: u8 = 3;
    /**总局数*/
    totalRound:i8 = 10;
	/**抢庄方式，0：明牌上庄，1：轮庄*/
    bidWay: u8 = 0;
	/**加入房间需要押注的最小金额*/
	minMoney:u64 = 1;
	/**开局方式，0：手动开局，1：满人数开*/
	startWay:u8 = 0;
    /**房主*/
    host:account_name=0;
    /**房间号*/
    roomNum: u64 = 0;
    /**加入房间的密码*/
    checkInNum:u64 = 0;
    /**开局的块高 */
    startBlock:i32 = 0;

    serialize(ds: DataStream): void {
        ds.write<u8>(this.bidWay);
        ds.write<account_name>(this.host);
        ds.write<u64>(this.minMoney);
        ds.write<u8>(this.minPlayerToStart);
        ds.write<u8>(this.point);
        ds.write<u64>(this.roomNum);
        ds.write<u8>(this.startWay);
        ds.write<i8>(this.totalRound);
        ds.write<u64>(this.checkInNum);
    }
    deserialize(ds: DataStream): void {
        this.bidWay = ds.read<u8>();
        this.host = ds.read<account_name>();
        this.minMoney = ds.read<u64>();
        this.minPlayerToStart = ds.read<u8>();
        this.point = ds.read<u8>();
        this.roomNum = ds.read<u64>();
        this.startWay = ds.read<u8>();
        this.totalRound = ds.read<i8>();
        this.checkInNum = ds.read<u64>();
    }

    primaryKey(): u64 {
        return this.roomNum;
    }
}