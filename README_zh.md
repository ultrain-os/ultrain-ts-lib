# Coding Ultrain Smart Contract with TypeScript

标签（空格分隔）： 合约开发

---
[TOC]

---
# Startup
Ultrain，超脑链使用类Javascript的语言来编写智能合约，这个类Javascript的语言以Typescript为原型，通过扩展的数据类型标志符，来达到强类型语言的编程语法．

## 编译工具链和开发环境
* 超脑提供了一套开发框架robin，用来支持合约开发/编译/调试/部署一整套流程．(目前这个框架正在开发过程中，尚未发布．　但是可以使用相应的命令行来完成以下工作)．
　　安装工具
```
git clone https://github.com/ultrain-os/robin
```
代码下载完成之后，请参考ReadMe了解如何安装和使用。

* TypeScript是脚本类型的语言，可以使用任何编辑器编写代码。VS Code, Sublime Text都是很好的选择。

## 系统内置的方法
function N(str: string): u64
: 方法**N()**用来将一个string转成一个account_name类型. `str`的字符长度不超过12个字符, 内容只能包括以下字符(不能以`.`结尾): `.012345abcdefghijklmnopqrstuvwxyz`

function RN(account: account_name): string
:  方法**RN()**用来将一个account_name类型转为string类型, 它是**N()**方法的反向方法.

function NEX(str: string): NameEx
:  方法**NEX()**将一个string类型转为NameEx类型. `str`的长度不超过21个字符, 内容只能包括以下字符(不能包含`.`): `._0-9a-zA-Z`. NameEx用来表示action name.

function RNEX(act: NameEx): string
:  方法**RNEX()**将一个NameEx转为string, 它是**NEX()**的反向方法.

Action.sender
:  当前transaction的发起者, account_name类型.

Action.receiver
:  当前transaction的接收者, 即合约帐户, account_name类型.

## 编写第一个合约Hello world
```
import { N, RN } from "ContractSDK/src/utils";
import { Log } from "ContractSDK/src/log";
import { Contract } from "ContractSDK/lib/contract";
import { NameEx, RNEX, NEX } from "ContractSDK/src/name_ex";
class HelloWorld extends Contract{

    @action
    hi(name: u64, age: u32, msg: string): void {
        Log.s("hi: name = ").s(RN(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();
    }
}
```
我们以上代码做如下说明：
1. import: 用来引入其它文件中定义的类和方法，详细用法可参考[typescript](https://www.tutorialspoint.com/typescript/index.htm)的说明。
2. extends Contract: 合约都需要派生自Contract，而且一个项目中**只能有一个Contract**。
3. @action: 申明一个合约方法。只有@action标志的方法，才能被调用。
4. Log: 打印Log。
5. `import { NameEx, RNEX, NEX } from "ContractSDK/src/name_ex"`, 需要手动引入这些变量, 否则编译的时候会报故障.

## 编译和部署合约
* 使用以下命令来编译合约：
``` usc hello.ts -l -O -t hello.wast -g hello.abi ```
如果代码没有bug的话，将会在当前目录下产生两个文件：hello.wast, hello.abi

* 使用clultrain命令部署合约。
``` clultrain set contract account1 dir/hello -p account1 ```
clultrain命令的使用参考help说明。

* 调用命令
``` clultrain push action account1 hi '["hello", 189, "hello world contract"]' -p account1 ```
`'["hello", 189, "hello world contract"]'`是方法`hi`的参数, 注意首尾的单引号和中括号不能省略。

**<i>命令行参数格式说明</i>**
1. 参数放在一对单引号中、用中括号包围。如里方法没有参数，则传参数为 `'[]'`。
2. 传递int型参数： `'[10086]'`.
3. 传递string参数: `'["hello"]'`.
4. 传递bool型参数，使用整数1表示true， 0表示false： `'[1]'`.
5. 传递account_name参数： `'["larry"]'`.
6. 传递Asset参数：`'["1000.0000 UGS"]'`.
7. 有多个参数时，参数之间用","隔开： `'["hello", 10086, "larry", "100.0000 UGS", 1]'`，参数的顺序必须和方法声明中的顺序一致。

## 在Action中Return信息
为了便于在调用方与节点中传递部分执行状态信息，引入Return模块.  
Return模块返回的数据会附加在http的response中， 调用方可以通过分析response得到Return的信息。  
需要强调的是， **Return的信息仅仅是在一个节点(host_url )上预执行的结果，并非区块链网络共识的结果。也就是说, Return返回的结果, 并不是最终交易执行的结果.**  
**<u>Return的信息只供参考，它可能与区块链网络共识结果不一致</u>。**

要Return信息，可以在action调用中，通过`Return`,`ReturnArray`方法来完成。Return信息有以下需要注意的点：
> NOTICE
1. Return的message是有长度限制的，默认的message长度为128个character。（int型数据会转成对应的string）。如果是在侧链中使用，可以在config.ini文件中配置`contract-return-string-length`来扩展长度限制。
2. 只支持Return基本数据类型int和string， 以及int[]和string[]。
3. 可以调用Return或ReturnArray多次，信息将被concat。
4. 超出长度限制的信息，会直接丢弃，不会抛出异常。

### Return信息的示例
```typescript
class HelloContract extends Contract {
    @action
    on_hi(name: u64, age: u32, msg: string): void {
        Return<string>("call hi() succeed.");
        ReturnArray<u8>([1,2,3]);
    }
}
```

执行正常的情况下，Return的结果是`call hi() succeed.123`

## 资产查询和转移
在合约中，可以查询一个帐号在ultrainio.token合约中的资产，即ultrain平台资产。查询资产使用`queryBalance(who: account_name): Asset`方法。
转移ultrain平台资产，可以使用`send(from: account_name, to: account_name, val: Asset, memo: string): void`方法。

使用详情请参考[示例balance](https://github.com/ultrain-os/TsSDK/blob/master/example/balance/balance.ts)。
```typescript
import "allocator/arena";
import { Contract } from "../../lib/contract";
import { Asset } from "../../src/asset";
import { send, queryBalance } from "../../src/balance";
import { Action } from "../../src/action";
import { Log } from "../../src/log";
import { NEX, NameEx } from "../../src/name_ex";
import { ultrain_assert } from "../../src/utils";

class BalanceContract extends Contract {

    /*
     * MUST set active permission of 'from' to utrio.token, otherwise the send operation will fail.
     * here is an example to set permission, the $PubKeyOfFrom is the public key of account $from:
     *
     * clultrain set account permission $from active
     * '{"threshold": 1,
     * "keys":[{"key": "$PubKeyOfFrom", "weight": 1}],
     * "accounts":[{"permission: {"actor": "$from", "permission": "utrio.code"}, "weight": 1}]}' owner -p $from
     */
    @action
    transfer(from: account_name, to: account_name, bet: Asset): void {

        let balance = queryBalance(from);
        ultrain_assert(balance >= bet, "your balance is not enough.");

        balance.prints("banalce from: ");

        send(from, to, bet, "this is a xxxx test");
    }
}
```
> NOTICE
使用send命令转移资产时，需要保证`from`的权限已经授权给了`utrio.code`，在使用命令行的情况下，可以通过以下命令来授权:
`clutrain set account permission $from active '{"threshold": 1, "keys":[{"key":"$PubKey_of_from", "wieght": 1}],  
"accounts": [{"permission": {"actor": "$from", "permission": "utrio.code"}, "weight": 1]}' owner -p $from`  
`$from`是需要授权的帐号。


## 事件订阅
* 在合约中emit事件
```
class HelloWorld extends Contract{

    @action
    hi(name: u64, age: u32, msg: string): void {
        Log.s("hi: name = ").s(RN(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();
        emit("onHiInvoked", EventObject.setString("name", RN(name)));
    }
```
**emit**:　 将会发出"onHiInvoked"事件，并将EventObject中的数据序列化后发送出去。EventObject对象序列化之后的数据长度是有限制的，如果需要配置数据长度，可以在config.ini文件中配置<i>contract-emit-string-length</i>的大小，默认值为128.

* 客户端订阅事件
客户端可以选择向Ultrain的结点注册监听事件，当ultrain结点中有事件发生时，将会post信息到注册的地址。
（以下示例中的*localhost*和*8888*分别表示节点的IP和port，在实际使用中需要替换成真实的地址和端口）
**订阅**
客户端通过post请求向Ultrain的节点注册事件监听：
订阅url:  `http://localhost:8888/v1/chain/register_event`
post的数据：
```
account: 合约的帐户名
post_url：　接受事件发生时推送的url
```
**取消订阅**
客户端通过post请求向Ultrain的节点取消事件监听：
订阅url:  `http://localhost:8888/v1/chain/unregister_event`
post的数据：
```
account: 合约的帐户名
post_url：　接受事件发生时推送的url
```
**推送的事件内容**
在合约被执行且有事件发生时，节点将推送事件到post_url中，推送内容中将包含以下内容：
```
event_name: 发生的事件名称
message: 发生的事件参数, JSON格式
```
### 订阅示例(python实现)
```python
#!/usr/bin/env python
import json
import requests

url = "http://127.0.0.1:8888/v1/chian/register_event"
content = [{"account":"hello","post_url":"http://127.0.0.1:8888/v1/listen_event"}]

json_content = json.dumps(content)
print json_content
r=requests.post(url,data=json_content)
print r.text
```

## 持久化存储
   Ultrain的智能合约提供了DBManager来存储合约数据到数据库中。不同于以太坊会自动保存数据，Ultrain需要明确的调用API来保存、读取数据。
### ISerializable接口
ISerializable是一个Interface， 定义以下三个方法：

```typescript
import {DataStream} from "../src/datastream";

export interface ISerializable {
    deserialize(ds: DataStream): void;
    serialize(ds : DataStream) : void;
    primaryKey(): u64;
}
```
* `deserialize(ds: DataStream): void;` 方法用来做反序列化工作，从DataStream的字节流中读取数据进行初始化工作。
* `serialize(ds: DataStream): void;`方法用来做序列化工作，将class的数据写入到字节流中。
* `primaryKey(): u64;`标志一个primary key。 如果这个class将作为一条独立的记录写入数据库，那primaryKey()返回的数据将成为数据库中的primary key.

> *NOTICE*
1. 一个实现了ISerialzable接口的class，编译器将自动实现以上三个方法，并将class中的成员变量都序列化/反序列化。如果需要单独override某一个/全部方法，则可以手动实现对应的方法。
2. 如果要排除某个成员变量，以避免序列化和反序列化，可以使用`@ignore`注解； 
3. 如果要指定某个成员变量为primaryKey，可以使用`@primaryid`注解。需要注意的是，被注解为@primaryid的变量必须是u64类型，如果没有变量被注解为@primaryid，则primaryKey()方法默认使用`0`作为返回值。
4. 如果使用了@注解，同时又override了serialize()、deserialize()、primaryKey()方法中的某一个（或全部），编译器将优先使用override的方法。

对于ISerializable接口的使用，举例如下
```typescript
class Person implements ISerializable {
    name: string;
    age: u32;
    sex: string;
    salary: u32;
    @ignore
    address: string; // 被忽略，不序列化和反序列化
    
    constructor() {
        this.name = "xx";
        //...
    }
    // 重写primaryKey()方法，返回Person的id
    primaryKey(): u64 {
        return N(this.name);
    }
}
```

### 可序列化存储的数据
存储到数据库中的数据，必须是能够序列化和反序列化。可以序列化存储的数据有以下几类：
1. 内置基本数据类型： u8/i8, u16/i16, u32/i32, u64/i64, boolean, string。
有一些类型其实也是基本数据类型的别名，如account_name。
2. 基本数据类型的一维数组： u8[], i8[], ..., string[]
3. 实现了ISerializable接口的类， 如上的Person。
4. 实现了ISerializable接口的类的一维数组，如Person[]。

### 声明合约中DB的table信息
如果合约中需要使用到DB进行数据存取，则需要在具体的Contract类中注解说明table的信息。这个注解信息将会包含在abi文件中， 以支持命令：clultrain get table <i>contract</i> <i>scope</i> <i>table</i>。
如下简单的一份伪代码：
```typescript
class Person implements ISerializable {
   name: string;
   sex: string;
}

class Car implements ISerializable {
   model: string;
   power: u32;
   color: string;
}

@database(Person, "persons")
@database(Car, "cars")
// @database() if any more
clas MyContract extends Contract {
    //...
    // your logic here
}    
```
上述代码将会生成两张表格： "persons"和"cars"。
需要注意的是，@database注解中的Person和Car两个类，**必须实现ISerializable接口**。

### 数据库读写
  Contract中数据存取要通过DBManager来管理。  
#### DBManager的定义：
```
 export class DBManager<T extends ISerializable> {
    constructor(tblname: u64, owner: u64, scope: u64) {}
    public emplace(payer: u64, obj: T): void {}
    public modify(payer: u64, newobj: T): void {}
    public exists(primary: u64): boolean {}
    public get(primary: u64, out: T): boolean { }
    public erase(obj: T): void {}
}   
```
* constructor()方法接收三个参数， `tblname: u64`表示表名；`owner：u64`表示这个表在哪个合约中，一般的，owner和该合约的receiver是一样的。`scope: u64`表示表中的一个上下文。
* emplace()方法向表中加入一条记录。`payer`表示这个帐号将为数据存储付费，`obj`是一个ISerializable的对象，将数据存入DB。
* modify()方法更新表中的数据。`payer`表示这条记录的创建者、付费方；`newobj`是更新后的数据，newobj的primaryKey对应的对象会被更新。
* exists()方法判断一个primaryKey是否存在。
* get()方法从DB中读取primary对应的记录，并反序列化到out中。
* erase()方法用来删除一条记录，obj的primaryKey对应的记录如果存在，将被删掉。
> NOTICE
table没有方法可以显式删除，只有当table中的记录都删掉时，table会自动被删除。
  

#### table里面scope和primary key的关系

table中的数据，可以按scope来分类，也可以通过primary key来分类。尽管它们都可以达到分类数据的效果，但是在table中，scope和primary key是两个不同的维度，它们之间的关系，大概可用下面的结构来表示：

``` 

 |--table
 |----scope1
 |--------primaryKey_1
 |--------primaryKey_2
 |--------........
 |----scope2
 |--------primaryKey_x
 |--------primaryKey_y
 |--------.......

```
在不同的scope下面，primary key可以取相同的值。

#### 使用示例
DB的读写操作，请参考[示例Person](https://github.com/ultrain-os/TsSDK/blob/master/example/person/person.ts)。
```typescript
import "allocator/arena";
import { Contract } from "../../lib/contract";
import { Action } from "../../src/action";
import { Log } from "../../src/log";
import { NEX, NameEx } from "../../src/name_ex";
import { ultrain_assert, N } from "../../src/utils";
import { ISerializable } from "../../lib/ISerializable";
import { DBManager } from "../../src/dbmanager";
import { DataStream } from "../../src/datastream";

class Person implements ISerializable {
    // name: string;
    name: string
    age: u32;
    salary: u32;

    primaryKey(): u64 { return N(this.name); }

    prints(): void {
        Log.s("name = ").s(this.name).s(", age = ").i(this.age).s(", salary = ").i(this.salary).flush();
    }
}

const tblname = "humans";
const scope = "dept.sales";

@database(Person, "humans")
// @database(SomeMoreRecordStruct, "other_table")
class PersonContract extends Contract {

    db: DBManager<Person>;

    public onInit(): void {
        this.db = new DBManager<Person>(N(tblname), this.receiver, N(scope));
    }


    public onStop(): void {

    }

    constructor(code: u64) {
        super(code);
        this._receiver = code;

        this.onInit();
    }

    @action
    add(name: string, age: u32, salary: u32): void {
        let p = new Person();
        p.name = name;
        p.age = age;
        p.salary = salary;

        let existing = this.db.exists(N(name));
        ultrain_assert(!existing, "this person has existed in db yet.");
        p.prints();
        this.db.emplace(this.receiver, p);
    }

    @action
    modify(name: string, salary: u32): void {
        let p = new Person();
        let existing = this.db.get(N(name), p);
        ultrain_assert(existing, "the person does not exist.");

        p.salary = salary;

        this.db.modify(this.receiver, p);
    }

    @action
    remove(name: string): void {
        Log.s("start to remove: ").s(name).flush();
        this.db.erase(N(name));
    }
}
```
