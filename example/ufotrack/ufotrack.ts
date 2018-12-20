import "allocator/arena";
import { Contract } from "ultrain-ts-lib/src/contract";
import { Log } from "ultrain-ts-lib/src/log";
import { NAME } from "ultrain-ts-lib/src/account";
import { Action } from "ultrain-ts-lib/src/action";
import { intToString } from "ultrain-ts-lib/src/utils";

class Shoes implements Serializable {
    @primaryid
    id: u64;
    product_url: string;
    color: string;
    size: string;
    goods_no: string;
    source: string;
    owner: string;
    transaction_time: string;
    tagid: string;
    sign: string;
    authenticate_time: string;
}

const shoestable = "track.shoes";

@database(Shoes, "track.shoes")
class Ufotrack extends Contract {

    shoes: DBManager<Shoes>;

    constructor(code: u64) {
        super(code);
        this.shoes = new DBManager<Shoes>(NAME(shoestable), this.receiver, NAME(shoestable));
    }

    @action
    authenticate(id: u64, product_url: string, color: string, size: string, goods_no: string, source: string,
            owner: string, transaction_time: string, tagid: string, sign: string, authenticate_time: string): void {
        Action.requireAuth(this.receiver);
        let existing = this.shoes.exists(id);
        ultrain_assert(!existing, "Ufo shoes of id: " + intToString(id) + "is exist!");
        let shoe = new Shoes();
        shoe.id = id;
        shoe.product_url = product_url;
        shoe.color = color;
        shoe.size = size;
        shoe.goods_no = goods_no;
        shoe.source = source;
        shoe.owner = owner;
        shoe.transaction_time = transaction_time;
        shoe.tagid = tagid;
        shoe.sign = sign;
        shoe.authenticate_time = authenticate_time;

        this.shoes.emplace(this.receiver, shoe);
    }

    @action
    erase(id: u64): void {
        Action.requireAuth(this.receiver);
        let existing = this.shoes.exists(id);
        ultrain_assert(existing, "Ufo shoes of id: " + intToString(id) + "is not exist!");
        this.shoes.erase(id);
    }
}