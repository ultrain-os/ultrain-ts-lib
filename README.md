# Manual for coding contract on Ultrain Blockchain

---
# Startup
Ultrain Blockchain uses a language likes Javascript to write smart contracts, this language bases on Typescript with strong type checking, so you can interpret it as C++ or Java.

## Predefined functions
function NAME(str: string): u64
: This funciton is applied to convert a string to account_name. The length of `str` must be equal-less than 12 and it can only contain characters from  `.012345abcdefghijklmnopqrstuvwxyz`, also, `str` can not end with `.`, otherwise it will be trimed.

function RNAME(account: account_name): string
:  This funciton is applied to convert an account_name to string.

function ACTION(str: string): Action
:  This funciton is applied to convert a string to class Action. Action wraps action related operations. The `str` only contains characters from  `._0-9a-zA-Z`, and its length must be less than 22. Refer class Action for more details.

Action.sender
:  The originator of current transaction, it returns an account_name value.

Action.receiver
:  The receiver of current transaction, normally, it is the account of your smart contract deployed to.

Block.number
:  The height of head block.

Block.id
:  The id of head block, it is a hexadecimal string with sha256 encryted .

Block.timestamp
:  The timestamp of head block, it returns seconds count since epoch.

## Your first Hello world contract
```
import { NAME, RNAME } from "ContractSDK/src/account";
import { Log } from "ContractSDK/src/log";
import { Contract } from "ContractSDK/src/contract";

class HelloWorld extends Contract {

    @action
    hi(name: u64, age: u32, msg: string): void {
        Log.s("hi: name = ").s(RNAME(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();
    }
}
```
Let's explain this snippet:
1. `import`: You can import classes, funcitons or anyother symbols exported from other files. You can refer to [typescript](https://www.tutorialspoint.com/typescript/index.htm) for more details.
2. `extends Contract`: Each smart contract must extends from base class Contract, and there must be ONE and ONLY ONE class extends from Contract.
3. `@action`: To declare an aciton. If a function is labeled with @action, then it can be invoked by sending a transaction to it.
4. `Log`: Prints log to console.

## Compile and deploy a smart contract
* To compile a contract, use:
`robin build`


* To deploy a contract, use:
`robin deploy`

## Return message from an transaction
In order to pass messages between blockchain node and centralized server, we import method *Return* and *ReturnArray*. The returned message will be appened to the http response.
Please notice this fact: **Return message is only a pre executed result of one blockchain node, it is not confirmed by the blockchain network. Sometimes the confirmed message would be different with what your get from http response.**
To return a message, please call `Return`,`ReturnArray` methods like this example:

```typescript
class HelloContract extends Contract {
    @action
    on_hi(name: u64, age: u32, msg: string): void {
        Return<string>("call hi() succeed.");
        ReturnArray<u8>([1,2,3]);
    }
}
```

After the action pre executed, you will get `call hi() succeed.123` as return message.

> NOTICE for Return a message
1. Length of return message is limited, its default length is 128( The integer values will be converted to string). You can change the default value `contract-return-string-length = 512` from file config.ini.
2. Return, ReturnArray only support primitive types, include integer, string, array of integer, array of string.
3. You can call Return or ReturnArray multi times, the message will be concated.
4. If the length of return message is longer than contract-return-string-length, the message is discared silently, no exception thrown.

## Query and transfer tokens from utrio.token
You can query/transfer the tokens from/to the account utrio.token, which Ultrain Blockchain issues tokens to. To query tokens of an account, call method `Asset.balanceOf(who: account_name): Asset`; To transfer tokens between accounts, call method `Asset.transfer(from: account_name, to: account_name, val: Asset, memo: string): void`.

For more details, refer to demo [balance](https://github.com/ultrain-os/TsSDK/blob/master/example/balance/balance.ts)。
```typescript
import "allocator/arena";
import { Contract } from "ContractSDK/src/contract";
import { Asset } from "ContractSDK/src/asset";
import { ultrain_assert } from "ContractSDK/src/utils";

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
> You must delegate your active permission to account `utrio.code`, if you want to transfer your tokens to some account from another contract.


## Monitor Events
* emit event from an action
```
class HelloWorld extends Contract{

    @action
    hi(name: u64, age: u32, msg: string): void {
        Log.s("hi: name = ").s(RNAME(name)).s(" age = ").i(age, 10).s(" msg = ").s(msg).flush();
        emit("onHiInvoked", EventObject.setString("name", RNAME(name)));
    }
```
**emit**: It will emit event  "onHiInvoked", and the messages set to EventObject will be composed to a JSON object.
The length of JSON object is limited to 128, you can config `contract-emit-string-length` in config.ini to change the default value.
If the length of JSON object is longer than contract-emit-string-length, this event would be discared without any exception.

* Subscribe/Unsubscribe events from blockchian node
Clients should subscribe envents from blockchain node, when a contract emits an event, the node will post EventObject message to specific url.

（In below snippets, the host and port of http url should be replaced with concrete values.）

**Subscribe**
You can post your request via this RPC  `http://localhost:8888/v1/chain/register_event` to subscribe all events of account.
The data struct of your request：
```JSON
{
"account": "account_which_contract_deployed_to",
"post_url": "http://yourserver:yourport"
}
```
If you subscribe events by curl, here is an example:
```base
curl -X POST -d '{"account":"contract.he","post_url":"http://127.0.0.1:3000"}' "http://localhost:8888/v1/chain/register_event"
```

**Unsubscribe**
You can post this request to unsubscribe by   `http://localhost:8888/v1/chain/unregister_event`

for curl example:
```base
curl -X POST -d '{"account":"contract.he","post_url":"http://127.0.0.1:3000"}' "http://localhost:8888/v1/chain/unregister_event"
```
**Struct of Event Message**
When some events emit, the blockchain node will post message to post_url, the message contains event name and a JSON style string.

### Start a http server to receive posted event message
Now start a http server to listen incoming message:
**IMPORTANT**: the server instance should support `keep-alive` settings.

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
serfer.keepAliveTimeout = 0;
server.listen(port, host);
console.log('Listening at http://' + host + ':' + port);

```

## Persistent Storage
It is different with Ethereum, Ultrain blockchain should not store data automatically, you can decide what dataes should be stored to or loaded from database.
You can do this by next steps:

### Interface <i>Serializable</i>
Serializable is an interface which defines methods to serialize and deserialize dataes, that supports persistent storage. It defines thress methods：

```typescript
export interface Serializable {
    deserialize(ds: DataStream): void;
    serialize(ds : DataStream) : void;
    primaryKey(): u64;
}
```
* `deserialize(ds: DataStream): void;` To deserialize an object from a datastrem.
* `serialize(ds: DataStream): void;` To serialize an object to a datastream.
* `primaryKey(): u64;` To generate a primary key for this object. If this object will be stored to database as an independent item, the return value will be the primary key in database. Otherwise, the return value is useless.

> *NOTICE*
1. The compiler would implements these methods automatically and serialize/deserialize all of its member varialbes if  a class implements interface Serializeable. If you want to override one or all of three methods, the compiler would choose your implementation and should not generate theme by itself.
2. If some member variables should be prevent from being serialized and deserialized, label them with `@ignore`.；
3. If a member variable is primary key, label it with `@primaryid`. Be attentation the @primaryid member variable must be type of u64.
If none member varialbe is labeled with @primaryid, funciton primaryKey() return <i>0</i> as default.
4. If label member variables with @ignore or/and @primaryid, and override function one or all of serialize(), deserialzie() or primaryKey(), the compiler should use overrided functions priority.

Here is an example to describe how to use interface Serializalbe:
```typescript
class Person implements Serializable {
    name: string;
    age: u32;
    sex: string;
    salary: u32;
    @ignore
    address: string; // be ignored

    constructor() {
        this.name = "xx";
        //...
    }
    // override function primaryKey(), return id of class Person.
    primaryKey(): u64 {
        return NAME(this.name);
    }
}
```

### Serializable data types
If you want to store data to database, the data must support serialize and deserialize. There are some data types can do this:

1. Primitive data types： u8/i8, u16/i16, u32/i32, u64/i64, boolean, string.
Some data type like `account_name` is an alias of primitive type of u64.
2. Array of primitive data types： u8[], i8[], ..., string[]
3. Classes which implements interface Serializable, like Person.
4. Array of classes which implements interface Serializable, like Person[].

### Declare table information for DB
If a contract use DB to persistent data, you must declare table information at your Contract.

Here is a snippet:
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
The compiler will generate two tables in abi file for "persons" and "cars".
Be attentation, the classes labeled with @database **must implements interface Serializable**.

### Read and Write Database
  Ultrain smart contract uses class DBManager to manipulate reading and write database.
#### Definition of DBManager：
```
 export class DBManager<T extends Serializable> {
    constructor(tblname: u64, owner: u64, scope: u64) {}
    public emplace(payer: u64, obj: T): void {}
    public modify(payer: u64, newobj: T): void {}
    public exists(primary: u64): boolean {}
    public get(primary: u64, out: T): boolean { }
    public erase(obj: T): void {}
}
```
* constructor() has three parameters， `tblname: u64` means table name. `owner：u64` is always the account which this contract deployed to. `scope: u64` is a context.
* emplace() insert an item to database. `payer` will pay for the storage，`obj` is an serializable object.
* modify() update an item.
* exists() judges if an primary key exists in DB or not.
* get() read an item from DB and deserialize it to *out* object.
* erase() to eliminate an item from DB whose primary key matched.
> NOTICE
You can not drop a table manually, if all of its items eliminated, the table is dropped.


#### Relationship between *scope* and *primary key* in a table

You can classify your data both with scope or primary key in a table, but they are in different dimensions, we should interpret them as below struct:

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
With different scope, items can have the same primary keys.

#### A demo of DBManager
Here is a demo for manipulate DBManager, refer to  [Person](https://github.com/ultrain-os/ultrain-ts-lib/blob/master/example/person/person.ts) for details.
```typescript
import "allocator/arena";
import { Contract } from "../../src/contract";
import { Log } from "../../src/log";
import { ultrain_assert } from "../../src/utils";
import { DBManager } from "../../src/dbmanager";
import { NAME } from "../../src/account";

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

@database(Person, "humans")
// @database(SomeMoreRecordStruct, "other_table")
class PersonContract extends Contract {

    db: DBManager<Person>;

    public onInit(): void {
        this.db = new DBManager<Person>(NAME(tblname), this.receiver, NAME(scope));
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
        this.db.emplace(this.receiver, p);
    }

    @action
    modify(name: string, salary: u32): void {
        let p = new Person();
        let existing = this.db.get(NAME(name), p);
        ultrain_assert(existing, "the person does not exist.");

        p.salary = salary;

        this.db.modify(this.receiver, p);
    }

    @action
    remove(name: string): void {
        Log.s("start to remove: ").s(name).flush();
        this.db.erase(NAME(name));
    }
}
```






