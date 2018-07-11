
import "allocator/arena";


interface A{

	AA():void{};

}

interface B{

    BB():void{};

}


export class C implements A, B{


	AA():void{


	}



	BB():void{


	}

}


let c:C = new C();
c.AA();
c.BB();

