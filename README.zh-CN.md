# Manual for coding contract on Ultrain Blockchain

---
# Startup
Ultrain，超脑链使用类Javascript的语言来编写智能合约，这个类Javascript的语言以Typescript为原型，通过扩展的数据类型标志符，来达到强类型语言的编程语法．

## 编译工具链和开发环境
> 参考[robin框架文档](http://developer.ultrain.io/documents)。

## 系统内置的方法
* **function NAME(str: string): u64**  
方法 **NAME()** 用来将一个string转成一个account_name类型. `str`的字符长度不超过12个字符, 内容只能包括以下字符(不能以`.`结尾): `12345abcdefghijklmnopqrstuvwxyz`

* **function RNAME(account: account_name): string**  
方法**RNAME()** 用来将一个account_name类型转为string类型, 它是 **NAME()** 方法的反向方法.

* **function ACTION(str: string): Action**  
方法 **ACTION()** 将一个string类型转为Action类型. `str`的长度不超过21个字符, 内容只能包括以下字符(不能包含`.`): `._0-9a-zA-Z`. Action类封装了action相关的信息.

* **Action.sender**  
  当前transaction的发起者, 返回account_name类型.

* **Action.receiver**  
当前transaction的接收者, 即合约部署的帐户名, 返回account_name类型.

* **Block.number**  
head block的块高。

* **Block\.id**  
head block的id，sha256的hash值。

* **Block.timestamp**  
head block的时间戳，从EPOCH开始的秒数。

* **Transaction\.id**  
当前交易的id，这个id和block中tx列表中id一致。

## 编写第一个合约Hello world
```typescript
import { NAME, RNAME } from "ultrain-ts-lib/src/account";
import { Log } from "ultrain-ts-lib/src/log";
import { Contract } from "ultrain-ts-lib/lib/contract";

class HelloWorld extends Contract {

    @action("pureview") 
    helloWorld(): void {
        Log.s("Hello world!").flush();
    }

    @action
    hi(name: account_name, age: u32, msg: string): void {
        Log.s("hi: name = ").s(RNAME(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();
    }
}
```
我们对以上代码做如下说明：
1. import: 用来引入其它文件中定义的类和方法，详细用法可参考[typescript](https://www.tutorialspoint.com/typescript/index.htm)的说明。
2. extends Contract: 合约都需要派生自Contract，而且一个项目中**只能有一个Contract**。
3. @action: 申明一个合约方法。只有@action标志的方法，才能作为合约的action被外部调用。  
action有注解"pureview"可以选用，pureview的action，相对于普通的action，有以下特点：  
* 不能修改合约的数据（即不可以add、modify、remove数据库中的数据，query可以)；
* 不会广播到区块链网络中，也不用经过共识；
* 调用会立即返回，不用等待共识周期确认；
4. Log: 打印Log。需要在config.ini文件中配置 `contracts-console = true`才能打印到终端。

## 编译和部署合约
* 使用以下命令来编译合约：
`robin build`


* 使用clultrain命令部署合约。
`robin deploy`

## 在Action中Return信息
为了便于在调用方与节点中传递部分执行状态信息，引入Return模块.  
Return模块返回的数据会附加在http的response的return_vaule字段中， 调用方可以通过分析response得到Return的信息。  
需要强调的是，
**<u>如果这个action不是pureview的，那么Return的信息只供参考，因为Return的信息仅仅是在一个节点(host_url )上预执行的结果，并非区块链网络共识的结果；如果是pureview的action，那么return的结果是基于当前预执行节点的数据状态所产生的结果</u>。**

要Return信息，可以在action调用中，返回一个支持Serializable的对象：
> NOTICE
1. Return的message是有长度限制的，默认的message长度为128个character。（int型数据会转成对应的string）。如果是在侧链中使用，可以在config.ini文件中配置`contract-return-string-length`来扩展长度限制。
2. 超出长度限制的信息，会直接丢弃，不会抛出异常。
3. 只支持可以Serializable的对象类型，其它类型会被直接丢弃。

### Return信息的示例
```typescript
class HelloContract extends Contract {
    @action
    on_hi(name: u64, age: u32, msg: string): string {
        return "hi, I am here!";
    }
}
```

执行正常的情况下，Return的结果是`hi, I am here!`

## 资产查询和转移
在合约中，可以查询一个帐号在ultrainio.token合约中的资产，即ultrain平台资产。查询资产使用`Asset.balanceOf(who: account_name): Asset`方法。
转移ultrain平台资产，可以使用`Asset.transfer(from: account_name, to: account_name, val: Asset, memo: string): void`方法。

使用详情请参考[示例balance](https://github.com/ultrain-os/ultrain-ts-lib/blob/master/example/balance/balance.ts)。
```typescript
import "allocator/arena";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Asset } from "ultrain-ts-lib/src/asset";
import { ultrain_assert } from "ultrain-ts-lib/src/utils";

class BalanceContract extends Contract {

    @action
    transfer(from: account_name, to: account_name, bet: Asset): void {

        let balance = Asset.balanceOf(from);
        ultrain_assert(balance.gte(bet), "your balance is not enough.");

        balance.prints("banalce from: ");

        Asset.transfer(from, to, bet, "this is a transfer test");
    }
}
```
> NOTICE
使用Asset.transfer命令转移资产时，需要保证`from`的权限已经授权给了`utrio.code`，在使用命令行的情况下，可以通过以下命令来授权:
`clutrain set account permission $from active '{"threshold": 1, "keys":[{"key":"$PubKey_of_from", "wieght": 1}],  
"accounts": [{"permission": {"actor": "$from", "permission": "utrio.code"}, "weight": 1]}' owner -p $from`  
`$from`是需要授权的帐号。


## 事件订阅
* 在合约中emit事件
```
class HelloWorld extends Contract{

    @action
    hi(name: u64, age: u32, msg: string): void {
        Log.s("hi: name = ").s(RNAME(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();
        emit("onHiInvoked", EventObject.setString("name", RNAME(name)));
    }
```
**emit**:　 将会发出"onHiInvoked"事件，并将EventObject中的数据序列化后发送出去。EventObject对象序列化之后的数据长度是有限制的，如果需要配置数据长度，可以在config.ini文件中配置<i>contract-emit-string-length</i>的大小，默认值为128.

* 客户端订阅事件
客户端可以选择向Ultrain的结点注册监听事件，当ultrain结点中有事件发生时，将会post信息到注册的地址。
（以下示例中的*localhost*和*8888*分别表示节点的IP和port，在实际使用中需要替换成真实的地址和端口）
> **IMPORTANT:** 节点post事件消息时，默认启用keep-alive头信息，所以接收事件的服务端，也要支持keep-alive，否则会丢失事件。

**订阅**
客户端通过post请求向Ultrain的节点注册事件监听:  
订阅url:  `http://[host]:[port]/v1/chain/register_event`
post的数据：
```
account: 合约的帐户名
post_url：　接受事件发生时推送的url
```
**取消订阅**
客户端通过post请求向Ultrain的节点取消事件监听：
订阅url:  `http://[host]:[port]/v1/chain/unregister_event`
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
content = {"account":"hello","post_url":"http://127.0.0.1:3000"}

json_content = json.dumps(content)
print json_content
r=requests.post(url,data=json_content)
print r.text
```

启动一个node服务器以接收post过来的消息:
```javascript
http = require('http');
fs = require('fs');
server = http.createServer( function(req, res) {

    console.dir(req.param);

    if (req.method == 'POST') {
        console.log("POST");
        var body = '';
        req.on('data', function (data) {
            body += data;
            console.log("Partial body: " + body);
        });
        req.on('end', function () {
            console.log("Body: " + body);
        });
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.end('post received');
    }
    else
    {
        console.log("GET");
       
        var html = fs.readFileSync('index.html');
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.end(html);
    }

});

port = 3000;
host = '127.0.0.1';
server.timeout = 0;
server.keepAliveTimeout = 0;
server.listen(port, host);
console.log('Listening at http://' + host + ':' + port);

```

## 持久化存储
   Ultrain的智能合约提供了DBManager来存储合约数据到数据库中。不同于以太坊会自动保存数据，Ultrain需要明确的调用API来保存、读取数据。
### Serializable接口
Serializable是一个Interface， 定义以下三个方法：

```typescript

export interface Serializable {
    deserialize(ds: DataStream): void;
    serialize(ds : DataStream) : void;
    primaryKey(): u64;
}
```
* `deserialize(ds: DataStream): void;` 方法用来做反序列化工作，从DataStream的字节流中读取数据进行初始化工作。
* `serialize(ds: DataStream): void;`方法用来做序列化工作，将class的数据写入到字节流中。
* `primaryKey(): u64;`标志一个primary key。 如果这个class将作为一条独立的记录写入数据库，那primaryKey()返回的数据将成为数据库中的primary key.

> *NOTICE*
1. 一个实现了Serializable接口的class，编译器将自动实现以上三个方法，并将class中的成员变量都序列化/反序列化。如果需要单独override某一个/全部方法，则可以手动实现对应的方法。
2. 如果要排除某个成员变量，以避免序列化和反序列化，可以使用`@ignore`注解； 
3. 如果要指定某个成员变量为primaryKey，可以使用`@primaryid`注解。需要注意的是，被注解为@primaryid的变量必须是u64类型，如果没有变量被注解为@primaryid，则primaryKey()方法默认使用`0`作为返回值。
4. 如果使用了@注解，同时又override了serialize()、deserialize()、primaryKey()方法中的某一个（或全部），编译器将优先使用override的方法。
5. 一个实现了Serializable接口的class，它的constructor方法 **必须** 支持不带参数的new操作(如果constructor确实有参数，可以通过设置默认参数的方式来达到目的)。

对于Serializable接口的使用，举例如下
```typescript
class Person implements Serializable {
    name: string;
    age: u32;
    sex: string;
    salary: u32;
    @ignore
    address: string; // 被忽略，不序列化和反序列化
    
    constructor(name: string = "xx") {
        this.name = name;
        //...
    }
    // 重写primaryKey()方法，返回Person的primaryid
    primaryKey(): u64 {
        return NAME(this.name);
    }
}
```

### 可序列化存储的数据
存储到数据库中的数据，必须是能够序列化和反序列化。可以序列化存储的数据有以下几类：
1. 内置基本数据类型： u8/i8, u16/i16, u32/i32, u64/i64, boolean, string。
有一些类型其实也是基本数据类型的别名，如account_name。
2. 基本数据类型的一维数组： u8[], i8[], ..., string[]
3. 实现了Serializable接口的类， 如上的Person。
4. 实现了Serializable接口的类的一维数组，如Person[]。

### 声明合约中DB的table信息
如果合约中需要使用到DB进行数据存取，则需要在具体的Contract类中注解说明table的信息。
如下简单的一份伪代码：
```typescript
class Person implements Serializable {
   name: string;
   sex: string;
}

class Car implements Serializable {
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
需要注意的是，@database注解中的Person和Car两个类，**必须实现Serializable接口**。

### 数据库读写
  Contract中数据存取要通过DBManager来管理。  
#### DBManager的定义：
```
 export class DBManager<T extends Serializable> {
    constructor(tblname: u64, scope: u64) {}
    public cursor(): Cursor<T> {}
    public emplace(obj: T): void {}
    public modify(newobj: T): void {}
    public exists(primary: u64): boolean {}
    public get(primary: u64, out: T): boolean { }
    public erase(obj: T): void {}
    public dropAll(): i32 {}
}   
```
* constructor()方法接收三个参数， `tblname: u64`表示表名；`scope: u64`表示表中的一个上下文。
* cursor()方法读取数据表中的所有记录。
* emplace()方法向表中加入一条记录。`obj`是一个Serializable的对象，将数据存入DB。
* modify()方法更新表中的数据。`newobj`是更新后的数据，newobj的primaryKey对应的对象会被更新。
* exists()方法判断一个primaryKey是否存在。
* get()方法从DB中读取primary对应的记录，并反序列化到out中。
* erase()方法用来删除一条记录，obj的primaryKey对应的记录如果存在，将被删掉。
* dropAll()方法用来删除表中的所有数据，返回值表示有多少条记录被删除了。
  
#### 使用Cursor遍历所有记录
我们提供了cursor来遍历所有的记录，但是必须明白，这个操作非常非常低效，因为在当调用cursor()方法时，会将所有的表中的数据都加载到内存里面。如果表中的数据很多的话，那这个交易将会被cursor方法阻塞，从而导致交易超时失败。
如下示例演示了怎样使用cursor：
```javascript
let cursor = this.db.cursor();
Log.s("cursor.count =").i(cursor.count).flush();

while(cursor.hasNext()) {
    let p: Person = cursor.get();
    p.prints();
    cursor.next();
}
```

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
DB的读写操作，请参考[示例Person](https://github.com/ultrain-os/ultrain-ts-lib/blob/master/example/person/person.ts)。
```typescript
import "allocator/arena";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Log } from "ultrain-ts-lib/src/log";
import { ultrain_assert } from "ultrain-ts-lib/src/utils";
import { DBManager } from "ultrain-ts-lib/src/dbmanager";
import { NAME } from "ultrain-ts-lib/src/account";

class Person implements Serializable {
    // name: string;
    name: string
    age: u32;
    salary: u32;

    primaryKey(): u64 { return NAME(this.name); }

    prints(): void {
        Log.s("name = ").s(this.name).s(", age = ").i(this.age).s(", salary = ").i(this.salary).flush();
    }
}

const tblname = "humans";
const scope = "dept.sales";

@database(Person, tblname)
// @database(SomeMoreRecordStruct, "other_table")
class PersonContract extends Contract {

    db: DBManager<Person>;

    public onInit(): void {
        this.db = new DBManager<Person>(NAME(tblname), NAME(scope));
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

        let existing = this.db.exists(NAME(name));
        ultrain_assert(!existing, "this person has existed in db yet.");
        p.prints();
        this.db.emplace(p);
    }

    @action
    modify(name: string, salary: u32): void {
        let p = new Person();
        let existing = this.db.get(NAME(name), p);
        ultrain_assert(existing, "the person does not exist.");

        p.salary = salary;

        this.db.modify(p);
    }

    @action
    remove(name: string): void {
        Log.s("start to remove: ").s(name).flush();
        this.db.erase(NAME(name));
    }
}
```

