import "allocator/arena";
import "../internal/alias.d";
import { Asset } from "../src/asset";
import { ISerializable } from "../lib/ISerializable";
import { DataStream } from "../src/datastream";
import { N } from "../src/utils";
import { Contract } from "../lib/contract";
import { Map } from "../src/map";


class Car implements ISerializable{
	getBrand():string{return "car"};
}

export class Audi extends Contract implements ISerializable{

	car:Car;

	year:u64;

	isEnergy:boolean;

	alias:account_name;

	name:string;

	asset:Asset;


	@action
	getbrand(aa:account_name, age:u64, asset:Asset, car:Car):string{
		

		return "audi";
	}

	
}
let audi = new Audi(12);

// let strings = new Array();

let map:Map<string,string> = new Map<string,string>();
let hasElement = map.contains("ddd");



