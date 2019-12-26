import { Contract } from "../../../src/contract";
import { JSON } from "../../../src/json";

class InnerObject implements Returnable {
    n1: u64;
    n2: u64;

    constructor() {
        this.n1 = 100;
        this.n2 = 200;
    }

    toString(): string {
        var json = new JSON();
        json.item<u64>("n1", this.n1);
        json.item<u64>("n2", this.n2);
        return json.toString();
    }
}

class Params implements Returnable {
    t_int: u64;
    t_str: string;
    t_bool: boolean;
    t_obj: InnerObject;
    t_int_arry: u64[];
    t_str_array: string[];
    t_bool_array: boolean[];
    t_obj_array: InnerObject[];

    constructor() {
        this.t_int = 100;
        this.t_str = "a string";
        this.t_bool = true;
        this.t_obj = new InnerObject();
        this.t_int_arry = new Array<u64>();
        this.t_int_arry.push(100);
        this.t_int_arry.push(200);
        this.t_int_arry.push(300);
        this.t_str_array = new Array<string>();
        this.t_str_array.push("string in array");
        this.t_str_array.push("数组中的字符串");
        this.t_bool_array = new Array<boolean>();
        this.t_bool_array.push(true);
        this.t_bool_array.push(false);
        this.t_obj_array = new Array<InnerObject>();
        this.t_obj_array.push(new InnerObject());
        this.t_obj_array.push(new InnerObject());
    }

    toString(): string {
        var json = new JSON();
        json.item<u64>("t_int", this.t_int);
        json.item<string>("t_str", this.t_str);
        json.item<boolean>("t_bool", this.t_bool);
        json.item<InnerObject>("t_obj", this.t_obj);
        json.item<u64[]>("t_int_array", this.t_int_arry);
        json.item<string[]>("t_str_array", this.t_str_array);
        json.item<boolean[]>("t_bool_array", this.t_bool_array);
        json.item<InnerObject[]>("t_obj_array", this.t_obj_array);
        return json.toString();
    }
}

const targetJSONString = '{"t_int":100,"t_str":"a string","t_bool":true,"t_obj":{"n1":100,"n2":200},"t_int_array":[100,200,300],"t_str_array":["string in array","数组中的字符串"],"t_bool_array":[true,false],"t_obj_array":[{"n1":100,"n2":200},{"n1":100,"n2":200}]}';
class JSONTest extends Contract {

    @action
    test(): void {
        let p = new Params();
        ultrain_assert(targetJSONString == p.toString(), "JSONTest test failed.");
    }
}