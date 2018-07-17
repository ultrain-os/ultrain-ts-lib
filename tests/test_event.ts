import "allocator/arena";


export class Car {

	event transfer(addr:u64, from:u64):void;

	impl():void{
		this.transfer(12, 13);
	}
}

