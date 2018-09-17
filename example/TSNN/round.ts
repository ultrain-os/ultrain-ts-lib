import { intToString, ultrain_assert } from "../../src/utils";
import { serializeMap, deserializeMap, serializeMapArray, deserializeMapArray, deserializeMapStringArray, deserializeMapString, serializeMapStringArray, serializeMapString } from "./util/serialize_util";
import { Action } from "../../src/action";
import { DBManager } from "../../src/dbmanager";
import { DBHelper } from "./util/DBHelper";
import { Log } from "../../src/log";
import { powMod, mul, isProbablyPrime, cmp } from "./util/BigInt";
import { bytesToString } from "./util/string_util";
import { Return } from "../../src/return";
import { NAME } from "../../src/account";

const DEFAULT_CARDS:string[] = ["2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24",
    "25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53"];
const MIN_PQ:string = "AzL8n0Y58m8";
const MAX_PQ:string = "hxMZA2CKZ6W";
const MIN_N:string = "3tX16dB2jpss4tZORYcqo4";
const BASE:i32 = 62;

export class Round implements Serializable{

    roundInfoDB:	DBManager<Round>;
    roundBaseInfoDB:DBManager<RoundBaseInfo>;
    roundTempDB:    DBManager<TempVariable>;
    /**初始化时确定不变的基本信息 */
    roundBaseInfo:  RoundBaseInfo = new RoundBaseInfo();
    /**对局过程中的临时变量，对局结束后需要删除*/
    temp:           TempVariable = new TempVariable();

    /**对局状态，0：初始化，设置P,Q中；1、第一轮洗牌；2：第二轮加密；3：上传秘钥；4：抢庄；5:下注；6：出牌阶段；7：上传洗牌秘钥；8：结算验证;9:对局结束;*/
    //类型为i32由于enum默认类型为i32
    stage:          i32 = RoundStag.INIT;
    /**庄家*/
    banker:         account_name = 0;
    /**对战信息 */
    playRecord:     PlayRecord;

    constructor(){
        this.roundInfoDB = new DBManager<Round>(NAME("chaole.nn"),Action.receiver,NAME("round"));
        this.roundBaseInfoDB = new DBManager<RoundBaseInfo>(NAME("chaole.nn"),Action.receiver,NAME("round.info"));
        this.roundTempDB = new DBManager<TempVariable>(NAME("chaole.nn"),Action.receiver,NAME("round.temp"));
    }

    serialize(ds: DataStream): void {
        ds.write<account_name>(this.banker);
        ds.write<i32>(this.stage);
    }

    deserialize(ds: DataStream): void {
        this.banker = ds.read<account_name>();
        this.stage = ds.read<i32>();
    }
    /**房间号+2位轮次号 */
    primaryKey(): u64 {
        return this.roundBaseInfo.roomNum*100 + <u64>this.roundBaseInfo.round;
    }

    public ReturnString():void{
        Return<string>("{\"stage\":");
        Return<i32>(this.stage);
        Return<string>(",\"banker\":");
        Return<account_name>(this.banker);
        Return<string>(",\"turn\":");
        Return<i32>(this.temp.turn);
        Return<string>(",\"P\":");
        Return<string>(this.roundBaseInfo.P);
        Return<string>(",\"Q\":");
        Return<string>(this.roundBaseInfo.Q);
        Return<string>("}");
    }

    /**
     * 从数据库获取数据填充本对象，未获取到的话返回false
     * @param id key
     */
    public getRound(id:u64):boolean{
        let res = this.roundInfoDB.get(id,this);
        res = this.roundBaseInfoDB.get(id,this.roundBaseInfo) && res;
        res = this.roundTempDB.get(id,this.temp) && res;
        if(res){
            this.playRecord = new PlayRecord(new DBHelper(Action.receiver,NAME("chaole.nn"),NAME("play.record")),this.roundBaseInfo.roomNum,this.roundBaseInfo.round);
        }
        return res;
    }

    public initInsertRound():void{
        let id = this.roundBaseInfo.roomNum*100 + this.roundBaseInfo.round;
        ultrain_assert(!this.roundBaseInfoDB.exists(id),"insert.issue: round have exist. id:"+intToString(id)+", table:round.info");
        ultrain_assert(!this.roundInfoDB.exists(id),"insert.issue: round have exist. id:"+intToString(id)+", table:round");
        ultrain_assert(!this.roundTempDB.exists(id),"insert.issue: round temp have exist. id:"+intToString(id)+", table:round.temp");
        this.roundBaseInfoDB.emplace(Action.sender,this.roundBaseInfo);
        this.roundInfoDB.emplace(Action.sender,this);
        this.roundTempDB.emplace(Action.sender,this.temp);
    }

    public updateRound():void{
        let id = this.roundBaseInfo.roomNum*100 + this.roundBaseInfo.round;
        ultrain_assert(this.roundInfoDB.exists(id),"insert.issue: round does not exist. id:"+intToString(id)+", table:round");
        this.roundInfoDB.modify(Action.sender,this);
    }

    public updateTemp():void{
        let id = this.roundBaseInfo.roomNum*100 + this.roundBaseInfo.round;
        ultrain_assert(this.roundTempDB.exists(id),"insert.issue: round does not exist. id:"+intToString(id)+", table:round.temp");
        this.roundTempDB.modify(Action.sender,this.temp);
    }


    /**
     * 设置P,Q,是一局的开始,内置插入数据库
     * @param from  设置者
     * @param P
     * @param Q
     */
    public setPQ(P:string, Q:string):void{
        ultrain_assert(this.stage==RoundStag.INIT, "stage.issue: now round stage is" + intToString(this.stage) + ", and you are not expect to do this action!");
        ultrain_assert(this.vaildPQ(P,Q), "PQ.issue: P or Q you chose is invaild!");
        this.roundBaseInfo.P = P;
        this.roundBaseInfo.Q = Q;
        this.roundBaseInfo.PQSetter = Action.sender;
        this.stage = RoundStag.SHUFFLE;
        let t = new TempVariable();
        t.id = this.roundBaseInfo.roomNum*100+this.roundBaseInfo.round;
        this.temp = t;
        this.initInsertRound();
        //emit("SetPQ", EventObject.set<u64>("roomNum",this.roundBaseInfo.roomNum).set<u8>("round",this.roundBaseInfo.round).set<account_name>("PQSetter",Action.sender).set<string>("P",P).set<string>("Q",Q));
    }

    /**
     * 接受玩家发来的洗牌数据
     * @param cards 洗牌数据
     */
    public shuffleCard(cards:string[]):void{
        ultrain_assert(this.stage==RoundStag.SHUFFLE, "stage.issue: now round stage is" + intToString(this.stage) + ", and you are not expect to do this action!");
        ultrain_assert(this.isInturn(Action.sender), "player.issue: you are not expect to action!");
        ultrain_assert(this.vaildCards(cards), "cards.issue: your cards are invaild!");
        this.nextTurn();
        let shuffle = this.playRecord.getShuffleCards();
        shuffle.set(Action.sender, cards);
        if(shuffle.size == this.roundBaseInfo.players.length){
            this.stage = RoundStag.ENCRYPT;
            this.updateRound();
        }
        this.playRecord.saveShuffleCards();
        //emit("ShuffleCards",  EventObject.set<u64>("roomNum",this.roundBaseInfo.roomNum).set<u8>("round",this.roundBaseInfo.round).set<account_name>("player", Action.sender).set<string[]>("cards",cards));
    }

    /**
     * 接受玩家发来的加密牌数据
     * @param cards 加密牌数据
     */
    public encryptCard(cards:string[]):void{
        ultrain_assert(this.stage==RoundStag.ENCRYPT, "stage.issue: now round stage is" + intToString(this.stage) + ", and you are not expect to do this action!");
        ultrain_assert(this.isInturn(Action.sender), "player.issue: you are not expect to action!");
        ultrain_assert(this.vaildCards(cards), "cards.issue: your cards are invaild!");
        this.nextTurn();
        let encryptCards = this.playRecord.getEncryptCards();
        encryptCards.set(Action.sender, cards);
        if(encryptCards.size == this.roundBaseInfo.players.length){
            this.stage = RoundStag.UPLOAD_ENCRYPT_KEY;
            this.updateRound();
        }
        this.playRecord.saveEncryptCards();
       // emit("EncryptCards",  EventObject.set<u64>("roomNum",this.roundBaseInfo.roomNum).set<u8>("round",this.roundBaseInfo.round).set<account_name>("player", Action.sender).set<string[]>("cards",cards));
    }

    /**
     * 上传加密的秘钥
     * @param keys  将所有除自己牌以外的秘钥以数组形式上传。当有52张牌时，传52位数字，自己的牌的秘钥以及尚未给出的最后一张牌用""占位。
     */
    public uploadEncryptKey(enkeys:string[],dekeys:string[]):void{
        ultrain_assert(this.stage==RoundStag.UPLOAD_ENCRYPT_KEY, "stage.issue: now round stage is" + intToString(this.stage) + ", and you are not expect to do this action!");
        ultrain_assert(this.isPlayer(Action.sender), "player.issue: you are not in the room !");
        let encryptKeys = this.playRecord.getEncryptKeys();
        let decryptKeys = this.playRecord.getDecryptKeys();
        ultrain_assert(!encryptKeys.has(Action.sender), "player.issue: you have already upload the encrypt keys !");
        //不对牌进行检验，由玩家提出异议后复盘
        encryptKeys.set(Action.sender, enkeys);
        decryptKeys.set(Action.sender, dekeys);
        this.playRecord.saveEncryptKeys();
        this.playRecord.saveDecryptKeys();
        if(encryptKeys.size == this.roundBaseInfo.players.length){
            if(this.roundBaseInfo.bidWay == 0){
                this.stage = RoundStag.SCRAMBLE_BANKER;
            }else{
                this.stage = RoundStag.DISCARD;
            }
            this.updateRound();
        }
        //emit("UploadEncryptKeys",  EventObject.set<u64>("roomNum",this.roundBaseInfo.roomNum).set<u8>("round",this.roundBaseInfo.round).set<account_name>("player", Action.sender).set<string[]>("encryptKey",enkeys).set<string[]>("decryptKey",dekeys));
    }

    /**
     * 抢庄，先到先得
     */
    public scrambleBanker():void{
        ultrain_assert(this.roundBaseInfo.bidWay==0, "bidWay.issue: we need bidWay=0 to do this action!");
        ultrain_assert(this.isPlayer(Action.sender), "player.issue: you are not in the room !");
        ultrain_assert(this.stage==RoundStag.SCRAMBLE_BANKER, "stage.issue: now round stage is " + intToString(this.stage) + ", and you are not expect to do this action!");
        this.banker = Action.sender;
        this.stage = RoundStag.BET;
        this.updateRound();
    }

    /**
     * 下注
     * @param bets
     */
    public bet(bets:u8):void{
        ultrain_assert(this.stage==RoundStag.BET, "stage.issue: now round stage is" + intToString(this.stage) + ", and you are not expect to do this action!");
        ultrain_assert(this.isPlayer(Action.sender), "player.issue: you are not in the room !");
        ultrain_assert(this.banker!=Action.sender, "player.issue: banker can not bet !");
        let bets4Player = this.playRecord.getBets4Player();
        ultrain_assert(!bets4Player.has(Action.sender), "bets.issue: you have already betted !");
        bets4Player.set(Action.sender, bets);
        this.playRecord.saveBets4Player();
        //emit("Bets",  EventObject.set<u64>("roomNum",this.roundBaseInfo.roomNum).set<u8>("round",this.roundBaseInfo.round).set<account_name>("player", Action.sender).set<u8>("bets",bets));
        if(bets4Player.size==this.roundBaseInfo.players.length-1){
            this.stage = RoundStag.UPLOAD_LAST_ENCRYPT_KEY;
            this.updateRound();
        }
    }

    /**
     * 上传最后一张牌的加密秘钥
     * @param key   加密秘钥
     */
    public uploadLastEncryptKey(enkeys:string[],dekeys:string[]):void{
        ultrain_assert(this.stage==RoundStag.UPLOAD_LAST_ENCRYPT_KEY, "stage.issue: now round stage is" + intToString(this.stage) + ", and you are not expect to do this action!");
        ultrain_assert(this.isPlayer(Action.sender), "player.issue: you are not in the room !");
        ultrain_assert(!this.temp.lastKeyMan.includes(Action.sender), "player.issue: you have already upload the last encrypt keys !");
        this.temp.lastKeyMan.push(Action.sender);
        this.updateTemp();
        //不对牌进行检验，由玩家提出异议后复盘
        //TODO
        let enKey = this.playRecord.getEncryptKeys().get(Action.sender);
        let deKey = this.playRecord.getDecryptKeys().get(Action.sender);
        for(let i = 0;i<this.roundBaseInfo.players.length;i++){
            enKey[i*5+4] = enkeys[i];
            deKey[i*5+4] = dekeys[i];
        }
        if(this.temp.lastKeyMan.length == this.roundBaseInfo.players.length){
            this.stage = RoundStag.DISCARD;
            this.updateRound();
        }
        //emit("UploadLastKey",  EventObject.set<u64>("roomNum",this.roundBaseInfo.roomNum).set<u8>("round",this.roundBaseInfo.round).set<account_name>("player", Action.sender).set<string[]>("encryptKey",enkeys).set<string[]>("decryptKey",dekeys));
    }

    /**
     * 出牌
     * @param cards 出的牌，牌所在位置的数组
     * @param keys  对应牌的秘钥
     */
    public discard(cards:u8[], enkeys:string[],dekeys:string[],flag:u8):void{
        ultrain_assert(this.stage==RoundStag.DISCARD, "stage.issue: now round stage is" + intToString(this.stage) + ", and you are not expect to do this action!");
        ultrain_assert(this.isInturn(Action.sender), "player.issue: you are not expect to action!");
        let encryptKeys = this.playRecord.getEncryptKeys();
        let diskeys:string[] = encryptKeys.get(Action.sender);
        let disdekeys:string[] = this.playRecord.getDecryptKeys().get(Action.sender);
        ultrain_assert(this.vaildDiscard(cards, enkeys,dekeys), "cards.issue: your cards are invaild!");
        for (let i: i32 = 0; i < diskeys.length; i++) {
            Log.s("diskeys ").i(i).s(": ").s(diskeys[i]).flush();
        }

        for(let i = 0;i<cards.length;i++){
            Log.s("card: ").i(cards[i]).s(", diskey: ").s(diskeys[i]).flush();
            ultrain_assert(changetype<i32>(cards[i]) < diskeys.length , "1　cards.issue.length: your cards are invaild!");
            ultrain_assert(diskeys[cards[i]] == "", "1　cards.issue.contents: your cards are invaild!");
            diskeys[cards[i]] = enkeys[i];
            ultrain_assert(changetype<i32>(cards[i]) < disdekeys.length, "2　cards.issue.length: your cards are invaild!");
            ultrain_assert(disdekeys[cards[i]] == "", "2　cards.issue.contents: your cards are invaild!");
            disdekeys[cards[i]] = dekeys[i];
        }
        encryptKeys.set(Action.sender, diskeys);
        this.playRecord.saveEncryptKeys();
        let cardObject = new Cards();
        cardObject.cards = cards;
        cardObject.flag = flag;
        this.playRecord.getPlayCards().push(cardObject);
        this.playRecord.savePlayCards();
        if(Action.sender==this.banker){
            this.temp.bankerCards = cardObject;
            this.updateTemp();
        }
        //emit("Discard",  EventObject.set<u64>("roomNum",this.roundBaseInfo.roomNum).set<u8>("round",this.roundBaseInfo.round).set<account_name>("player", Action.sender).set<u8[]>("cards", cards).set<string[]>("enkeys", enkeys).set<string[]>("dekeys", dekeys).set<u8>("flag",flag));
        if(this.isDiscardEnd()){
            this.stage = RoundStag.UPLOAD_SHUFFLE_KEY;
            this.updateRound();
        }

    }

    /**
     * 上传洗牌秘钥
     * @param key   洗牌秘钥
     */
    public uploadShuffleKeys(enkey:string,dekey:string):void{
        ultrain_assert(this.stage==RoundStag.UPLOAD_SHUFFLE_KEY, "stage.issue: now round stage is" + intToString(this.stage) + ", and you are not expect to do this action!");
        ultrain_assert(this.isPlayer(Action.sender), "player.issue: you are not in the room !");
        let shuffleEnKeys = this.playRecord.getShuffleEnKeys();
        ultrain_assert(!shuffleEnKeys.has(Action.sender), "upload.issue: you have already uploaded !");
        shuffleEnKeys.set(Action.sender,enkey);
        this.playRecord.saveShuffleEnKeys();
        this.playRecord.getShuffleDeKeys().set(Action.sender,dekey);
        this.playRecord.saveShuffleDeKeys();
        //emit("UploadShuffleKeys",  EventObject.set<u64>("roomNum",this.roundBaseInfo.roomNum).set<u8>("round",this.roundBaseInfo.round).set<account_name>("player", Action.sender).set<string>("enkey",enkey).set<string>("dekey",dekey));
        if(this.playRecord.getBets4Player().size==this.roundBaseInfo.players.length){
            this.stage = RoundStag.SETTLE;
            this.updateRound();
        }
    }

    /**
     * 上传结果
     */
    public settle(points:string[]):i16[]{
        ultrain_assert(this.stage == RoundStag.SETTLE,"stage.issue: now round stage is " + intToString(this.stage) + ", and you are not expect to do this action !");
        ultrain_assert(this.isPlayer(Action.sender), "player.issue: you are not in the room !");
        ultrain_assert(!this.playRecord.getPostResult().has(Action.sender), "player.issue: you have already post the result !");
        let temp = this.temp.prePostResultPlayer;

        let res:i16[] = this.calResult();
        let result:i16[] = this.playRecord.getResult();
        for(let i = 0;i<res.length;i++){
            result.push(res[i]);
        }
        this.playRecord.saveResult();
        return res;
    }

    // /**
    //  * 上传各自运行的结果
    //  * @param result    按players顺序排列的每人得分情况
    //  */
    // public uploadResult(result:i16[]):void{
    //     ultrain_assert(this.stage == RoundStag.SETTLE,"stage.issue: now round stage is " + this.stage + ", and you are not expect to do this action !");
    //     ultrain_assert(this.isPlayer(Action.sender), "player.issue: you are not in the room !");
    //     ultrain_assert(!this.postResult.has(Action.sender), "player.issue: you have already post the result !");
    //     let temp = this.prePostResultPlayer;
    //     this.prePostResultPlayer = Action.sender;
    //     this.postResult.set(Action.sender, result);
    //     emit("uploadResult", EventObject.set<account_name>("player", Action.sender).set<i16[]>("result", result));
    //     if(temp!=0){
    //         if(!this.isArrayTheSame(result,this.postResult.get(temp))){
    //             this.vaildResult();
    //             this.stage = RoundStag.END;
    //             emit("Result", EventObject.set<i16[]>("result", this.result));
    //             return;
    //         }
    //     }
    //     if(this.postResult.size==this.players.length){
    //         this.result = result;
    //         emit("Result", EventObject.set<i16[]>("result", this.result));
    //         this.stage = RoundStag.END;
    //     }
    // }

    /**
     * 当bidWay==1时，直接由room设置轮庄的庄家
     * @param banker    庄家.
     */
    public setInTurnBanker(banker:account_name):void{
        ultrain_assert(this.roundBaseInfo.bidWay==1, "bidWay.issue: we need bidWay=1 to do this action!");
        this.banker = banker;
        this.updateRound();
    }

    public quit(player:account_name):void{

    }

    /**
     * 判断上传的Q,P是否有效
     * @param P
     * @param Q
     */
    private vaildPQ(P:string, Q:string):boolean{
        let pp = isProbablyPrime(P,50,BASE);
        let pq = isProbablyPrime(Q,50,BASE);
        let n:string = mul(P,Q,BASE);
        if(pp==0||pq==0||cmp(P,MIN_PQ,BASE)<0||cmp(P,MAX_PQ,BASE)>0||cmp(Q,MIN_PQ,BASE)<0||cmp(Q,MAX_PQ,BASE)>0||cmp(n,MIN_N,BASE)<0){
            return false;
        }
        return true;
    }

    /**
     * 判断洗牌和加密阶段的牌是否有效
     * @param card
     */
    private vaildCards(card:string[]):boolean{
        //TODO
        return true;
    }

    /**
     * 判断玩家是否应该操作
     * @param player    玩家地址
     */
    private isInturn(player:account_name):boolean{
        return this.roundBaseInfo.players[this.temp.turn]==player;
    }

    /**
     * 判断是否本局玩家
     * @param player    玩家名
     */
    private isPlayer(player:account_name):boolean{
        return changetype<boolean>(this.roundBaseInfo.players.includes(player));
    }

    /**
     * 移动到下一个玩家
     */
    private nextTurn():void{
        let len:u64 = this.roundBaseInfo.players.length;
        if(this.temp.turn + 1 == len){
            this.temp.turn = 0;
            this.updateTemp();
        }else{
            this.temp.turn++;
            this.updateTemp();
        }
    }

    /**
     * 检验出牌是否有效
     * @param cards 出的牌，牌所在位置的数组
     * @param keys  对应牌的秘钥
     * @returns     返回牌是否有效
     */
    private vaildDiscard(cards:u8[], enkeys:string[],dekeys:string[]):boolean{
        if(cards.length!=5||enkeys.length!=5||dekeys.length!=5){
            return false;
        }
        //TODO 检查enkeys和dekeys相关性
        return true;
    }

    /**
     * 判断是否结束牌局
     */
    private isDiscardEnd():boolean{
        return this.playRecord.getPlayCards().length>=this.roundBaseInfo.players.length;
    }
    /**
     * 判断两个数组是否一样
     * @param arr1
     * @param arr2
     * @returns 返回数组是否一致
     */
    private isArrayTheSame<T>(arr1:T[],arr2:T[]):boolean{
        if(arr1.length==arr2.length){
            for(let i = 0;i<arr1.length;i++){
                if(arr1[i]!=arr2[i]){
                    return false;
                }
            }
        }else{
            return false;
        }
        return true;
    }

    /**计算结果比分结果 */
    private calResult():i16[]{
        let result = new Array<i16>();
        let len = this.roundBaseInfo.players.length*5;
        let cards = this.playRecord.getEncryptCards().get(this.roundBaseInfo.players[this.roundBaseInfo.players.length-1]).slice(0,len);
        let decryptKeys = this.playRecord.getDecryptKeys();
        //先解密牌
        for(let i = 0;i<this.roundBaseInfo.players.length;i++){
            let keys = decryptKeys.get(this.roundBaseInfo.players[i]);
            for(let j = 0;j<cards.length;j++){
                cards[j] = this.decrypt(cards[i],keys[j]);
            }
        }
        //分析庄家牌型
        let bankerAnaly = this.toAnalyseCards(this.temp.bankerCards,cards);
        let bankerPos:i32 = 0;
        //分析并比较其他人牌型
        let playCards = this.playRecord.getPlayCards();
        for(let i = 0;i<playCards.length;i++){
           if(this.roundBaseInfo.players[i]!=this.banker){
                let analy = this.toAnalyseCards(playCards[i],cards);
                result.push(this.compareAnalyse(bankerAnaly,analy,this.roundBaseInfo.players[i]));
           }else{
                bankerPos = i;
                result.push(0);
           }
        }
        let bankercount:i16 = 0;
        //统计其他人得注，取反即庄家得注
        for(let i = 0;i<result.length;i++){
            bankercount = bankercount - result[i];
        }
        result[bankerPos] = bankercount;
        return result;
    }
    /**
     * 牌型比较
     * @param bankerCards   庄家牌型
     * @param otherCards    其他人牌型
     * @returns             返回其他人相对庄家的输赢注情况
     */
    private compareAnalyse(bankerCards:CardAnalyseResult,otherCards:CardAnalyseResult,otherAccount:account_name):i16{
        //TODO
        let flag:i16 = 0;
        let base:i16 = 0;
        if(bankerCards.code<otherCards.code){
            flag = 1;
        }else if(bankerCards.code==otherCards.code){
            if(bankerCards.maxCard<otherCards.maxCard){
                flag = 1;
            }else{
                flag = -1;
            }
        }else{
            flag = -1;
        }
        if(flag==1){
            base = otherCards.code>0?changetype<i16>(otherCards.code):1;
        }else{
            base = bankerCards.code>0?changetype<i16>(bankerCards.code):1;
        }
        let bet:i16 = <i16>this.playRecord.getBets4Player().get(otherAccount);
        return flag*base*bet;
    }

    /**
     *
     * @param cardNums
     * @param cards
     * @param flag
     */
    private toAnalyseCards(cardNums:Cards,cards:string[]):CardAnalyseResult{
        let tempArr = new Array<string>();
        for(let j = 0 ;j<cardNums.cards.length;j++){
            tempArr.push(cards[<i32>cardNums.cards[j]]);
        }
        return this.AnalyseCard(tempArr,cardNums.flag);
    }

    /**
     * 牌型检查。
     * 牛分前3和后2，两遍从大到小排列。
     * 炸弹前
     * @param cards
     * @param flag
     */
    private AnalyseCard(cards:string[],flag:u8):CardAnalyseResult{
        //TODO
        let maxCard:u8 = 0;
        let temp:u8 = 0;
        let numCard = new Array<u8>();
        for(let i = 0;i<cards.length;i++){
            temp = changetype<u8>(parseI32(cards[i]))
            numCard.push(temp);
            if(maxCard<temp){
                maxCard = temp;
            }
        }
        let res:CardAnalyseResult = new CardAnalyseResult(flag,maxCard);
        switch (flag){
            //没牛
            case 0:break;
            //有牛
            case 1:;
            case 2:;
            case 3:;
            case 4:;
            case 5:;
            case 6:;
            case 7:;
            case 8:;
            case 9:
            ultrain_assert(NiuNiuHelper.hasNiu(numCard),"flag.issue: cards do not fit the flag! ");
            break;
            //牛牛
            case 10:
            ultrain_assert(NiuNiuHelper.hasNiu(numCard),"flag.issue: cards do not fit the flag! ");
            ultrain_assert(NiuNiuHelper.getValueFromNum(numCard[3])+NiuNiuHelper.getValueFromNum(numCard[4])%10 == 0,"flag.issue: cards do not fit the flag! ");
            break;
            //顺子牛
            case 11:
            ultrain_assert(NiuNiuHelper.hasNiu(numCard)&&NiuNiuHelper.isShunZi(numCard,maxCard),"flag.issue: cards do not fit the flag! ");
            break;
            //同花牛
            case 12:
            ultrain_assert(NiuNiuHelper.hasNiu(numCard)&&NiuNiuHelper.isTongHua(numCard),"flag.issue: cards do not fit the flag! ");
            break;
            //葫芦牛
            case 13:
            ultrain_assert(NiuNiuHelper.hasNiu(numCard)&&NiuNiuHelper.isTongHua(numCard.slice(0,3))&&NiuNiuHelper.isTongHua(numCard.slice(3)),"flag.issue: cards do not fit the flag! ");
            break;
            //五花牛
            case 14:
            ultrain_assert(NiuNiuHelper.isWuHua(numCard),"flag.issue: cards do not fit the flag! ");
            break;
            //五小牛
            case 15:
            ultrain_assert(NiuNiuHelper.isWuXiaoNiu(numCard),"flag.issue: cards do not fit the flag! ");
            break;
            //炸弹
            case 16:
            ultrain_assert(NiuNiuHelper.isZhaDan(numCard),"flag.issue: cards do not fit the flag! ");
            break;
            //同花顺
            case 17:
            ultrain_assert(NiuNiuHelper.isShunZi(numCard,maxCard)&&NiuNiuHelper.isTongHua(numCard),"flag.issue: cards do not fit the flag! ");
            break;
            default:ultrain_assert(false,"flag.issue: card code error!");
        }
        return res;
    }

    /**
     * 模拟牌局洗牌加密过程
     * @return 返回有错的玩家，如果没问题，返回0.
     */
    private simulationProcess():account_name{
        //TODO 条件限制
        let temp_cards = DEFAULT_CARDS;
        let ts = this;
        //检验洗牌过程是否一致
        let shuffleEnKeys = this.playRecord.getShuffleEnKeys();
        let shuffleCards = this.playRecord.getShuffleCards();
        for(let i = 0;i<this.roundBaseInfo.players.length;i++){
            let key = shuffleEnKeys.get(this.roundBaseInfo.players[i]);

            temp_cards.forEach(function(card:string,index:number):void{
                temp_cards[index] = ts.encrypt(card,key);
            });
            let cards = shuffleCards.get(this.roundBaseInfo.players[i]);
            if(!this.isAllElementAllIn(temp_cards,cards)){
                return this.roundBaseInfo.players[i];
            }
        }
        let encryptKeys = this.playRecord.getEncryptKeys();
        let shuffleDeKeys = this.playRecord.getShuffleDeKeys();
        let encryptCards = this.playRecord.getEncryptCards();
        //检验加密过程是否有错
        for(let i = 0;i<this.roundBaseInfo.players.length;i++){
            let key = encryptKeys.get(this.roundBaseInfo.players[i]);
            let deKey = shuffleDeKeys.get(this.roundBaseInfo.players[i]);
            let cards = encryptCards.get(this.roundBaseInfo.players[i]);
            let temp:string;
            for(let j = 0;j<temp_cards.length;j++){
                temp = this.decrypt(temp_cards[j], deKey);
                temp_cards[j] = this.encrypt(temp, key[j]);
                if(temp_cards[j]!=cards[j]){
                    return this.roundBaseInfo.players[i];
                }
            }
        }
        return 0;
    }

    /**
     * 加密算法
     * @param card  明文
     * @param key   加密秘钥
     */
    private encrypt(card:string,key:string):string{
        return powMod(card,key,mul(this.roundBaseInfo.P,this.roundBaseInfo.P,BASE),BASE);
    }

    /**
     * 解密算法
     * @param msg   密文
     * @param key   解密秘钥
     */
    private decrypt(msg:string, key:string):string{
        return this.encrypt(msg,key);
    }

    /**
     * 检验两个数组元素是否一致，不论顺序
     * @param arr1
     * @param arr2
     */
    private isAllElementAllIn<T>(arr1:T[], arr2:T[]):boolean{
        if(arr1.length!=arr2.length){
            return false;
        }
        let tempArr2 = arr2.slice(0);
        for(let i = 0;i<arr1.length;i++){
            for(let i = 0;i< tempArr2.length;i++){
                if(tempArr2[i]==arr1[i]){
                    tempArr2.splice(i,1);
                    break;
                }else{
                    return false;
                }
            }
        }
        if(tempArr2.length==0){
            return true;
        }
    }
}

export class Cards implements Serializable{
    /**出牌的数据，指牌的序号 */
    cards:  u8[];
    /**牌型信息 */
    flag:   u8;

    serialize(ds: DataStream): void {
        ds.writeVector<u8>(this.cards);
        ds.write<u8>(this.flag);
    }

    deserialize(ds: DataStream): void {
        this.cards = ds.readVector<u8>();
        this.flag = ds.read<u8>();
    }
    //此处不需要将Cards作为单条数据插入，故未实现primaryKey。
    primaryKey(): u64 {
        return 0;
    }
    public toString():string{
        let res:string = "{\"cards\":[";
        for(let i = 0;i<this.cards.length;i++){
            res = res + intToString(this.cards[i]);
            if(i<this.cards.length-1){
                res = res+",";
            }
        }
        res = res+"],\"flag\":" + intToString(this.flag)+"}";
        return res;
    }
}

class CardAnalyseResult{
    /**牌型代码 */
    code:   u8;
    /**最大牌面 */
    maxCard:u8;
    constructor(code:u8,maxCard:u8){
        this.code = code;
        this.maxCard = maxCard;
    }
}

export class RoundBaseInfo implements Serializable{
    /**局数*/
    round:          u8 = 0;
    /**当前玩家*/
    players:        Array<account_name> = new Array<account_name>();
    /**抢庄方式，0：明牌上庄，1：轮庄。*/
    bidWay:         u8 = 0;
    /**房间号。由room对象存储*/
    roomNum:        u64 = 0;
    //
    Q:              string = "";
    //
    P:              string = "";
    PQSetter:        account_name;
    serialize(ds: DataStream): void {
        ds.writeString(this.P);
        ds.writeString(this.Q);
        ds.write<u8>(this.round);
        ds.writeVector<account_name>(this.players);
        ds.write<u8>(this.bidWay);
        ds.write<u64>(this.roomNum);
        ds.write<account_name>(this.PQSetter);
    }

    deserialize(ds: DataStream): void {
        this.P = ds.readString();
        this.Q = ds.readString();
        this.round = ds.read<u8>();
        this.players = ds.readVector<account_name>();
        this.bidWay = ds.read<u8>();
        this.roomNum = ds.read<u64>();
        this.PQSetter = ds.read<account_name>();
    }

    primaryKey(): u64 {
        return this.roomNum*100 + <u64>this.round;
    }
}

class TempVariable implements Serializable{
    id:         u64;
    /**标记当前操作的玩家序号 */
    turn:       i32 = 0;
    /**上一个上传结果的玩家 */
    prePostResultPlayer:    account_name = 0;
    /**已上传最后一张牌秘钥的玩家标记位 */
    lastKeyMan: account_name[] = new Array<account_name>();
    /**庄家的牌的标记位 */
    bankerCards:Cards = new Cards();

    serialize(ds: DataStream): void {
        ds.write<u64>(this.id);
        ds.write<i32>(this.turn);
        ds.write<account_name>(this.prePostResultPlayer);
        ds.writeVector<account_name>(this.lastKeyMan);
        this.bankerCards.serialize(ds);
    }

    deserialize(ds: DataStream): void {
        this.id = ds.read<u64>();
        this.turn = ds.read<i32>();
        this.prePostResultPlayer = ds.read<account_name>();
        this.lastKeyMan = ds.readVector<account_name>();
        this.bankerCards.serialize(ds);
    }

    primaryKey(): u64 {
        return this.id;
    }
}

class PlayRecord{
    private db:             DBHelper;
    private room:           u64;
    private round:          u8;
    private cacheRecord:    Map<u8,bool> = new Map<u8,bool>();
    /**每个玩家上传的洗牌数据  代号1*/
    private shuffleCards:   Map<account_name, Array<string>> = new Map<account_name, Array<string>>();
    /**每个玩家上传的加密数据 代号2*/
    private encryptCards:   Map<account_name, Array<string>> = new Map<account_name, Array<string>>();
    /**每个玩家洗牌的加密秘钥 代号3*/
    private shuffleEnKeys:  Map<account_name, string> = new Map<account_name, string>();
    /**每个玩家洗牌的解密秘钥 代号4*/
    private shuffleDeKeys:  Map<account_name, string> = new Map<account_name, string>();
    /**每个玩家的第二轮加密秘钥 代号5*/
    private encryptKeys:    Map<account_name, Array<string>> = new Map<account_name, Array<string>>();
    /**每个玩家的第二轮解密秘钥 代号6*/
    private decryptKeys:    Map<account_name, Array<string>> = new Map<account_name, Array<string>>();
    /**每一步出牌的数据 代号7*/
    private playCards:      Array<Cards> = new Array<Cards>();
    /**每个玩家计算上传的对局结果,value为按顺序每个玩家赢得的倍数，输的为负 代号8*/
    private postResult:     Map<account_name,Array<i16>> = new Map<account_name,Array<i16>>();
    /**对局结果 代号9*/
    private result:         Array<i16> = new Array<i16>();
    /**每个玩家的下注情况 代号10*/
    private bets4Player:    Map<account_name,u8> = new Map<account_name,u8>();

    constructor(db:DBHelper,room:u64,round:u8){
        this.db = db;
        this.room = room;
        this.round = round;
    }
    /**
     *
     * @param suffix 不超过99
     */
    private getID(suffix:u64):u64{
        return this.room*10000+<u64>this.round*100+suffix;
    }

    public getShuffleCards():Map<account_name, Array<string>>{
        if(!this.cacheRecord.has(1)){
            let id = this.getID(1);
            if(this.db.exist(id)){
                deserializeMapStringArray<account_name>(this.shuffleCards,this.db.get(id));
                this.cacheRecord.set(1,true);
            }
        }
        return this.shuffleCards;
    }

    public saveShuffleCards():void{
        let id = this.getID(1);
        let res = this.shuffleCards;
        let ins = new DataStream(0, 0);
        serializeMapStringArray<account_name>(res,ins);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        serializeMapStringArray<account_name>(res,ds);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);

        }
    }

    public getEncryptCards():Map<account_name, Array<string>>{
        let id = this.getID(2);
        if(!this.cacheRecord.has(2)){
            if(this.db.exist(id)){
                deserializeMapStringArray<account_name>(this.encryptCards,this.db.get(id));
                this.cacheRecord.set(2,true);
            }
        }
        return this.encryptCards;
    }

    public saveEncryptCards():void{
        let id = this.getID(2);
        let res = this.encryptCards;
        let ins = new DataStream(0, 0);
        serializeMapStringArray<account_name>(res,ins);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        serializeMapStringArray<account_name>(res,ds);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }

    public getShuffleEnKeys():Map<account_name,string>{
        let id = this.getID(3);
        if(!this.cacheRecord.has(3)){
            if(this.db.exist(id)){
                deserializeMapString<account_name>(this.shuffleEnKeys,this.db.get(id));
                this.cacheRecord.set(3,true);
            }
        }
        return this.shuffleEnKeys;
    }

    public saveShuffleEnKeys():void{
        let id = this.getID(3);
        let res = this.shuffleEnKeys;
        let ins = new DataStream(0, 0);
        serializeMapString<account_name>(res,ins);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        serializeMapString<account_name>(res,ds);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }

    public getShuffleDeKeys():Map<account_name,string>{
        let id = this.getID(4);
        if(!this.cacheRecord.has(4)){
            if(this.db.exist(id)){
                deserializeMapString<account_name>(this.shuffleDeKeys,this.db.get(id));
                this.cacheRecord.set(4,true);
            }
        }
        return this.shuffleDeKeys;
    }

    public saveShuffleDeKeys():void{
        let id = this.getID(4);
        let res = this.shuffleDeKeys;
        let ins = new DataStream(0, 0);
        serializeMapString<account_name>(res,ins);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        serializeMapString<account_name>(res,ds);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }

    public getEncryptKeys():Map<account_name,Array<string>>{
        let id = this.getID(5);
        if(!this.cacheRecord.has(5)){
            if(this.db.exist(id)){
                deserializeMapStringArray<account_name>(this.encryptKeys,this.db.get(id));
                this.cacheRecord.set(5,true);
            }
        }
        return this.encryptKeys;
    }

    public saveEncryptKeys():void{
        let id = this.getID(5);
        let res = this.encryptKeys;
        let ins = new DataStream(0, 0);
        serializeMapStringArray<account_name>(res,ins);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        serializeMapStringArray<account_name>(res,ds);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }

    public getDecryptKeys():Map<account_name,Array<string>>{
        let id = this.getID(6);
        if(!this.cacheRecord.has(6)){
            if(this.db.exist(id)){
                deserializeMapStringArray<account_name>(this.decryptKeys,this.db.get(id));
                this.cacheRecord.set(6,true);
            }
        }
        return this.decryptKeys;
    }

    public saveDecryptKeys():void{
        let id = this.getID(6);
        let res = this.decryptKeys;
        let ins = new DataStream(0, 0);
        serializeMapStringArray<account_name>(res,ins);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        serializeMapStringArray<account_name>(res,ds);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }

    public getPlayCards():Cards[]{
        let id = this.getID(7);
        if(!this.cacheRecord.has(7)){
            if(this.db.exist(id)){
                let ds = this.db.get(id);
                this.playCards = ds.readComplexVector<Cards>();
                this.cacheRecord.set(7,true);
            }
        }
        return this.playCards;
    }

    public savePlayCards():void{
        let id = this.getID(7);
        let res = this.playCards;
        let ins = new DataStream(0, 0);
        ins.writeComplexVector<Cards>(res);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        ds.writeComplexVector<Cards>(res);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }

    public getPostResult():Map<account_name,Array<i16>>{
        let id = this.getID(8);
        if(!this.cacheRecord.has(8)){
            if(this.db.exist(id)){
                deserializeMapArray<account_name,i16>(this.postResult,this.db.get(id));
                this.cacheRecord.set(8,true);
            }
        }

        return this.postResult;
    }

    public savePostResult():void{
        let id = this.getID(8);
        let res = this.postResult;
        let ins = new DataStream(0, 0);
        serializeMapArray<account_name,i16>(res,ins);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        serializeMapArray<account_name,i16>(res,ds);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }

    public getResult():Array<i16>{
        let id = this.getID(9);
        if(!this.cacheRecord.has(9)){
            if(this.db.exist(id)){
                let ds = this.db.get(id);
                this.result = ds.readVector<i16>();
                this.cacheRecord.set(9,true);
            }
        }

        return this.result;
    }

    public saveResult():void{
        let id = this.getID(9);
        let res = this.result;
        let ins = new DataStream(0, 0);
        ins.writeVector<i16>(res);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        ds.writeVector<i16>(res);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }

    public getBets4Player():Map<account_name,u8>{
        let id = this.getID(10);
        if(!this.cacheRecord.has(10)){
            if(this.db.exist(id)){
                deserializeMap<account_name,u8>(this.bets4Player,this.db.get(id));
                this.cacheRecord.set(10,true);
            }
        }
        return this.bets4Player;
    }

    public saveBets4Player():void{
        let id = this.getID(10);
        let res = this.bets4Player;
        let ins = new DataStream(0, 0);
        serializeMap<account_name,u8>(res,ins);
        let arr = new Uint8Array(ins.pos);
        let ds = new DataStream(changetype<usize>(arr.buffer), ins.pos);
        serializeMap<account_name,u8>(res,ds);
        if(this.db.exist(id)){
            this.db.update(Action.sender,ds,id);
        }else{
            this.db.insert(Action.sender,ds,id);
        }
    }
}

export const enum RoundStag{
    /**对局状态，0：初始化，设置P,Q中*/
    INIT,
    /**第一轮洗牌*/
    SHUFFLE,
    /**第二轮加密 */
    ENCRYPT,
    /**上传加密秘钥(前4张) */
    UPLOAD_ENCRYPT_KEY,
    /**抢庄 */
    SCRAMBLE_BANKER,
    /**下注 */
    BET,
    /**上传加密秘钥(最后一张) */
    UPLOAD_LAST_ENCRYPT_KEY,
    /**出牌阶段 */
    DISCARD,
    /**上传洗牌秘钥以供验证 */
    UPLOAD_SHUFFLE_KEY,
    /**结算验证 */
    SETTLE,
    /**对局结束 */
    END
}

class NiuNiuHelper{
    public static isWuXiaoNiu(numCard:u8[]):boolean{
        let res:u8 = 0;
        for(let i = 0;i<numCard.length;i++){
            res = res + this.getValueFromNum(numCard[i]);
            if(res>10){
                return false;
            }
        }
        return res==10;
    }

    public static isZhaDan(numCard:u8[]):boolean{
        let res:u8 = 0;
        let count:Map<u8,i32> = new Map<u8,i32>();
        let num = 0;
        for(let i = 0;i<numCard.length;i++){
            if(count.has(numCard[i])){
                num = count.get(numCard[i])+1;
            }else{
                num = 1;
            }
            count.set(numCard[i],num);
        }
        let keys:u8[] = count.keys();
        for(let i = 0;i<keys.length;i++){
            if(count.get(keys[i])>3){
                return true;
            }
        }
        return false;

    }

    public static  isWuHua(numCard:u8[]):boolean{
        for(let i = 0;i<numCard.length;i++){
            if(numCard[i]<38){
                return false;
            }
        }
        return true;
    }

    public static  isShunZi(numCard:u8[],maxCard:u8):boolean{
        let set = new Set<i32>();
        let max:i32 = changetype<i32>(maxCard);
        for(let i = 0;i<numCard.length;i++){
            set.add(max-i);
        }
        for(let i = 0;i<numCard.length;i++){
            if(!set.has(numCard[i])){
                return false;
            }
            set.delete(numCard[i]);
        }
        return true;
    }

    public static  isTongHua(numCard:u8[]):boolean{
        let color:u8 = this.getColorFromNum(numCard[1]);
        for(let i = 1;i<numCard.length;i++){
            if(this.getColorFromNum(numCard[i])!=color){
                return false;
            }
        }
        return true;
    }


    public static  hasNiu(numCard:u8[]):boolean{
        return (this.getValueFromNum(numCard[0])+this.getValueFromNum(numCard[1])+this.getValueFromNum(numCard[2]))%10 == 0;
    }

    public static  getValueFromNum(num:u8):u8{
        let res = (num-2)/4+1;
        res = res>9?0:res;
        return (num-2)/4;
    }

    public static  getColorFromNum(num:u8):u8{
        return (num-2)%4;
    }
}