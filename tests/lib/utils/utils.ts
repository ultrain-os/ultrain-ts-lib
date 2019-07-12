import { Log } from "../../../src/log";
import { Contract } from "../../../src/contract";

export class Utils extends Contract {
	print<T>(param: T): void {
		if (isInteger(param)) {
			Log.i(changetype<T>(param));
		}
		if (isString(param)) {
			Log.s(changetype<string>(param));
		}
		Log.flush();
	}

	@action
	test(a: u64): void {
		this.print<string>("121");
		this.print<i32>(121);
		this.print<i32>(123123);
	}
}
