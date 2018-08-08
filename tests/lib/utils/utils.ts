import { Log } from "../../../src/log";
import { Contract } from "../../../lib/contract";
import { NameEx, RNEX ,NEX} from "../../../src/name_ex";


export class Utils extends Contract{


	print<T>(param: T):void{

		if(isInteger(param)){
			Log.i( changetype<T>(param));
		}

		if(isString(param)){
			Log.s( changetype<string>(param));
		}

		Log.flush();

	}


	@action
	test(a: u64):void{

		this.print("121");
		this.print(121);

		this.print(123123);

	}


}
