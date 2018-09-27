import { Contract } from "../../src/contract";
import { Asset } from "../../src/asset";
import { Room, RoomInfo } from "./room";
import { ultrain_assert} from "../../src/utils";
import { Action } from "../../src/action";
import { Return, ReturnArray } from "../../src/return";
import { DBManager } from "../../src/dbmanager";
import { Round, Cards, RoundBaseInfo, TempVariable } from "./round";
import { serializeMap, deserializeMap } from "./util/serialize_util";
import { Log } from "../../src/log";
import { Block } from "../../src/block";
import { NAME, RNAME } from "../../src/account";

class RoomMap implements Serializable {
	/**全局记录的房间号，每新建一个房间则自增*/
	roomNum:		u64 = 1;
	/**进入房间的密码和房间号之间的对应关系,牌局结束后被移除*/
	checkInNumKeys: u64[] = [];
	checkInNumValues: u64[] = []

	serialize(ds: DataStream): void {
		ds.write<u64>(this.roomNum);
		ds.writeVector<u64>(this.checkInNumKeys);
		ds.writeVector<u64>(this.checkInNumValues);
	}

	deserialize(ds: DataStream): void {
		this.roomNum = ds.read<u64>();
		this.checkInNumKeys = ds.readVector<u64>();
		this.checkInNumValues = ds.readVector<u64>();
	}

	primaryKey(): u64 {
        return NAME("index");
	}

	has(key: u64): boolean {
		return this.checkInNumKeys.includes(key);
	}

	private find(key: u64): i32 {
		let len = this.checkInNumKeys.length;
		for (let i: i32 = 0; i < len; i++) {
			if (this.checkInNumKeys[i] == key) {
				return i;
			}
		}
		return -1;
	}

	set(key: u64, value: u64): void {
		let insertPos = this.find(key);
		if (insertPos == -1) {
			this.checkInNumKeys.push(key);
			this.checkInNumValues.push(value);
		} else {
			this.checkInNumValues[insertPos] = value;
		}
	}

	get(key: u64): u64 {
		let idx = this.find(key);
		if (idx == -1) return 0;
		return this.checkInNumValues[idx];
	}

	keys(): u64[] {
		return this.checkInNumKeys;
	}

	delete(key: u64): void {
		let idx = this.find(key);
		if (key != -1) {
			this.checkInNumKeys.splice(idx, 1);
			this.checkInNumValues.splice(idx, 1);
		}
	}
}
/**
 * 合约入口，负责创建房间，打牌等操作。
 * 将房间的内部操作根据roomNum分发给对应room来执行(只有对局还存在时)。
 */
@database(RoomMap, "chaole.nn")
class NiuNiuContract extends Contract {
	/**合约拥有者 */
	owner:			account_name;

	indexInfoDB:	DBManager<RoomMap>;

	roomMap: RoomMap;

	public constructor(receiver: account_name) {
		super(receiver);
		this.owner = receiver;
		this.roomMap = new RoomMap();

		this.indexInfoDB = new DBManager<RoomMap>(NAME("chaole.nn"),this.owner,NAME("index"));
		if(!this.indexInfoDB.get(NAME("index"),this.roomMap)){
			this.indexInfoDB.emplace(Action.sender,this.roomMap);
		}
	}

	@action
	public test(i:u64):void{
		Log.i(NAME("chaole.nn")).flush();
		Log.i(NAME("index")).flush();
		Log.i(this.owner).flush();
		Log.i(NAME("utrio.pdf")).flush();
	}
	/**
	 * 创建房间
	 * @param minPlayerToStart  开局玩家数
	 * @param point  底分
	 * @param totalRound 总局数;
	 * @param bidWay 抢庄方式，0：明牌上庄，1：轮庄
	 * @param minMoney 加入房间需要押注的最小金额
	 * @param startWay 开局方式，0：手动开局，1：满人数开
	 * @param checkInNum 随机数，用作生成进入房间输入的数字。
	 */
	@action
	public createRoom(minPlayerToStart:u8, point:u8, totalRound:u8, bidWay:u8, minMoney:u64, startWay:u8, checkInNum:u64):void{
		ultrain_assert(!this.roomMap.has(checkInNum),"createRoom.issue: try another checkInNum.");
		ultrain_assert(minPlayerToStart>1,"params.issue: minPlayerToStart must >2.");
		ultrain_assert(point>0,"params.issue: point must > 0.");
		ultrain_assert(point<200,"params.issue: point must < 200.");
		ultrain_assert(totalRound<20,"params.issue: totalRound must < 30.");
		ultrain_assert(totalRound>0,"params.issue: totalRound must > 0.");
		ultrain_assert(minMoney>0,"params.issue: minMoney must > 0.");
		ultrain_assert(startWay==0||startWay==1,"params.issue: startWay must in [0,1].");
		let room:Room = new Room();
		let info = new RoomInfo();
		info.minPlayerToStart = minPlayerToStart;
		info.point = point;
		info.totalRound = totalRound;
		info.bidWay = bidWay;
		info.minMoney = bidWay;
		info.startWay = startWay;
		info.host = Action.sender;
		info.roomNum  = this.roomMap.roomNum;
		info.checkInNum = checkInNum;
		info.minMoney = minMoney;
		info.startBlock = Block.number;
		room.roomInfo = info;
		room.players.push(Action.sender);
		room.initInsertRoom();
		this.roomMap.set(checkInNum,this.roomMap.roomNum);
		this.roomMap.roomNum++;
		//修改大厅数据
		this.indexInfoDB.modify(Action.sender,this.roomMap);
	}

	/**
	 * 加入房间
	 * @param quantity 押入金额
	 * @param checkInNum 加入的房间号
	 */
	@action
	public checkIn(quantity:Asset, checkInNum:u64):void{
		ultrain_assert(<boolean>this.roomMap.has(checkInNum),"nonce.issue: checkInNum is not exist.");
		let roomNum:u64 = this.roomMap.get(checkInNum);
		let room:Room = new Room();
		ultrain_assert(room.getRoom(roomNum),"nonce.issue: room is not exist.");
		room.checkIn(quantity, Action.sender);
	}

	/**
	 * 开始对局
	 * @param roomNum	房间号
	 */
	@action
	public start(roomNum:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.start();
	}

	/**
	 * 房主设定P,Q
	 * @param roomNum
	 * @param P
	 * @param Q
	 */
	@action
	public setPQ(roomNum:u64,P:string,Q:string):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.setPQ(P,Q);
	}

	/**
	 * 洗牌
	 * @param cards
	 * @param roomNum
	 */
	@action
	public shuffleCard(cards:string[],roomNum:u64):void{
		// Log.s("shuffleCard:"+RNAME(Action.sender)).flush();
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.shuffleCard(cards);
	}

	/**
	 * 加密牌
	 * @param cards
	 * @param roomNum
	 */
	@action
	public encryptCard(cards:string[],roomNum:u64):void{
		// Log.s("encryptCard:"+RNAME(Action.sender)).flush();
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.encryptCard(cards);
	}

	@action
	public uploadEncryptKey(enkeys:string[],dekeys:string[],roomNum:u64):void{
		// Log.s("uploadEncryptKey:"+RNAME(Action.sender)).flush();
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.uploadEncryptKey(enkeys,dekeys);
	}

	/**
	 * 抢庄
	 * @param roomNum
	 */
	@action
	public scrambleBanker(roomNum:u64):void{
		// Log.s("scrambleBanker:"+RNAME(Action.sender)).flush();
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.scrambleBanker();
	}

	/**
	 * 下注
	 * @param bets
	 * @param roomNum
	 */
	@action
	public bet(bets:u8,roomNum:u64):void{
		// Log.s("bet:"+RNAME(Action.sender)).flush();
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.bet(bets);
	}

	/**
	 * 上传第五张牌的秘钥
	 * @param keys
	 * @param roomNum
	 */
	@action
	public uploadLastEncryptKey(enkeys:string[],dekeys:string[],roomNum:u64):void{
		// Log.s("uploadLastEncryptKey:"+RNAME(Action.sender)).flush();
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.uploadLastEncryptKey(enkeys,dekeys);
	}

	/**
	 * 出牌
	 * @param cards
	 * @param keys
	 * @param flag
	 * @param roomNum
	 */
	@action
	public discard(cards:u8[],enkeys:string[],dekeys:string[],flag:u8,roomNum:u64):void{
		// Log.s("discard:"+RNAME(Action.sender)).flush();
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.discard(cards,enkeys,dekeys,flag);
	}

	/**
	 * 上传洗牌秘钥
	 * @param key
	 * @param roomNum
	 */
	@action
	public uploadShuffleKeys(enkey:string,dekey:string,roomNum:u64):void{
		// Log.s("uploadShuffleKeys:"+RNAME(Action.sender)).flush();
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.uploadShuffleKeys(enkey,dekey);
	}

	/**
	 * 结算
	 * @param roomNum
	 */
	@action
	public settle(roomNum:u64,points:i16[]):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		room.settle(points);
		//根据房间stage字段判断房间是否结束，然后存储
		if(room.stage==-1){
			this.roomMap.delete(room.roomInfo.checkInNum);
		}

	}

	/**
	 *  在房间未开局前可以退出房间
	 * @param roomNum
	 */
	@action
	public quitRoom(roomNum:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		ultrain_assert(room.stage==0, "room.issue: you can not quit when game is starting !");
		room.quitRoom(Action.sender);
	}
	/**
	 * 提议解散房间
	 * @param roomNum
	 */
	@action
	public proposalDissolveRoom(roomNum:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		ultrain_assert(room.stage!=0, "room.issue: game does not start !");
		room.proposalDissolveRoom(Action.sender);
	}

	/**
	 * 同意解散房间
	 * @param roomNum
	 */
	@action
	public responseProposal(roomNum:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		ultrain_assert(room.stage!=0, "room.issue: game does not start !");
		room.responseProposal(Action.sender);
		if(room.stage==-1){
			this.roomMap.delete(room.roomInfo.checkInNum);
		}
	}

	/**
	 * 举报作弊，主要是在秘钥方面
	 * @param roomNum
	 * @param player
	 */
	@action
	public findCheat(roomNum:u64,player:account_name):void{

	}

	/**
	 * 举报玩家超时
	 * @param roomNum
	 * @param player
	 */
	@action
	public findOverTime(roomNum:u64,player:account_name):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum), "room.issue: roomNum is not exist !");
		ultrain_assert(room.stage!=0, "room.issue: game does not start !");
		room.findOverTime(player);
		//根据房间stage字段判断房间是否结束
		if(room.stage==-1){
			this.roomMap.delete(room.roomInfo.checkInNum);
		}
	}



	/**
	 * 根据加入房间数字获取房间号，只在房间未结束时有效
	 * @param checkInNum
	 * @returns 存在则返回房间号
	 */
	@action
	public getRoomMap(checkInNum:u64,nonce:u64):void{
		ultrain_assert(changetype<boolean>(this.roomMap.has(checkInNum)),"params.issue: no such checkInNum.");
		Return<u64>(this.roomMap.get(checkInNum));
	}

	/**
	 * 获取房间信息
	 * @param roomNum	房间号
	 * @returns 房间信息，包括minPlayerToStart,point,totalRound,bidWay,minMoney,startWay,checkInNum,roomNum。json格式。没有房间信息则返回null
	 */
	@action
	public getRoomInfo(roomNum:u64,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		room.ReturnString();
	}

	/**
	 * 获取轮次信息
	 * @param roomNum 	房间号
	 * @param roundNum 	场次号
	 */
	@action
	public getRoundInfo(roomNum:u64,roundNum:u8,nonce:u64):void{
		let round = new Round();
		let id:u64 = roomNum*100+<u64>roundNum;
		ultrain_assert(round.getRound(id),"params.issue: no such roomNum or roundNum.");
		round.ReturnString();
	}

	/**
	 * 获取某个房间的玩家
	 * @param roomNum	房间号
	 */
	@action
	public getPlayers(roomNum:u64,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		let arr:Array<string> = new Array<string>();
		for(let i = 0;i<room.players.length;i++){
			arr.push("\""+RNAME(room.players[i])+"\"");
		}
		ReturnArray<string>(arr);
	}

	/**
	 * 获取现有的加入房间数字
	 */
	@action
	public getCheckInNum(nonce:u64):void{
		//参考ReturnArray写法
		ReturnArray<u64>(this.roomMap.keys());
	}

	@action
	public getShuffleCards(roomNum:u64,round:u64,player:account_name,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		ReturnArray<string>(room.getShuffleCards(round,player));
	}

	@action
	public getEncryptCards(roomNum:u64,round:u64,player:account_name,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		ReturnArray<string>(room.getEncryptCards(round,player));
	}

	@action
	public getShuffleEnKeys(roomNum:u64,round:u64,player:account_name,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		Return<string>(room.getShuffleEnKeys(round,player));
	}

	@action
	public getShuffleDeKeys(roomNum:u64,round:u64,player:account_name,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		Return<string>(room.getShuffleDeKeys(round,player));
	}

	@action
	public getEncryptKeys(roomNum:u64,round:u64,player:account_name,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		ReturnArray<string>(room.getEncryptKeys(round,player));
	}

	@action
	public getDecryptKeys(roomNum:u64,round:u64,player:account_name,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		ReturnArray<string>(room.getDecryptKeys(round,player));
	}

	@action
	public getBets4Player(roomNum:u64,round:u64,player:account_name,nonce:u64):void{
		let room = new Room();
		ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
		Return<u8>(room.getBets4Player(round,player));
	}

	// @action
	// public getPlayCards(roomNum:u64,round:u64,index:i32,nonce:u64):void{
	// 	let room = new Room();
	// 	ultrain_assert(room.getRoom(roomNum),"params.issue: no such roomNum.");
	// 	let cards:Cards = room.getPlayCards(round,index);
	// 	Return<string>(cards.toString());
	// }

	@action
	public getResult(roomNum:u64,roundNum:u64,nonce:u64):void{
		let id = roomNum*100+roundNum;
        let round = new Round();
		ultrain_assert(round.getRound(id),"round.issue: round is not exist");
		let res:Array<i16> = round.playRecord.getResult();
		ReturnArray<i16>(res);
	}

}
