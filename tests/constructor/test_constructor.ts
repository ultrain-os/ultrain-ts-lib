// import "allocator/emscripten";
// import "allocator/arena";
import "allocator/emscripten";



class DataManager{

	length: u32;
	data: Array<u64>;

	constructor(length:u32, data:Array<u64>){
		this.length = length;
		this.data = data;
	}

}


export function apply(receiver: u64, code: u64, actioncode: u64): void {

	for (let i = 0; i < 100000; i++){
		test_new(i %100);
	}

}

export function test_new(size: u32):void{

	let data = changetype<Array<u64>>(allocate_memory(sizeof<u64>() * size));
	let db_manager = new DataManager(size, data);

	free_memory(<usize>db_manager);
}

export function test_let():void  {

	let length = 12;
	let data = changetype < Array < u64 >> (allocate_memory(sizeof<u64>() * length));
	let db_manager: DataManager;
	db_manager.length = length;
	db_manager.data = data;
}


