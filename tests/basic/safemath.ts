import { Contract } from "../../src/contract";
import { SafeMath } from "../../src/safemath";


class TestSafeMath extends Contract {

	@action
	test():void {
		assert(SafeMath.add(12,12) == 24);
		assert(SafeMath.sub(12,12) == 0);
		assert(SafeMath.div(12,12) == 1);
		assert(SafeMath.mul(12,12) == 144);
		assert(SafeMath.sqrt(16) == 4);
		assert(SafeMath.square(12) == 144);
		assert(SafeMath.pwr(2,2) == 4);
	}
}