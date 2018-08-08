import "allocator/arena";

import { DataStream } from "../../../src/datastream";
import { printstr, N, ultrain_assert, RN } from "../../../src/utils";
import { Log } from "../../../src/log";
import { Contract } from "../../../lib/contract";
import { env as Action } from "../../../internal/action.d";
import { NameEx, RNEX ,NEX} from "../../../src/name_ex";
import { SafeMath } from "../../../lib/safemath";


class TestSafeMath extends Contract {

	@action
	test(a:u64):void {
		assert(SafeMath.add(12,12) == 24);
		assert(SafeMath.sub(12,12) == 0);
		assert(SafeMath.div(12,12) == 1);
		assert(SafeMath.mul(12,12) == 144);
		assert(SafeMath.sqrt(16) == 4);
		assert(SafeMath.square(12) == 144);
		assert(SafeMath.pwr(2,2) == 4);

		
		ultrain_assert(SafeMath.sub(a,13) == 0, "error sub operation");		
	}
}