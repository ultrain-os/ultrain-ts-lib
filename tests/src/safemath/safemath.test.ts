import { Contract } from "../../../src/contract";
import { SafeMath } from "../../../src/safemath";


class SafeMathTest extends Contract {

    @action
    test(): void {

        ultrain_assert(SafeMath.add(12, 12) == 24, "SafeMath.add failed.");
        ultrain_assert(SafeMath.sub(12, 12) == 0, "SafeMath.sub failed.");
        ultrain_assert(SafeMath.div(12, 12) == 1, "SafeMath.div failed.");
        ultrain_assert(SafeMath.mul(12, 12) == 144, "SafeMath.mul failed.");
        ultrain_assert(SafeMath.sqrt(16) == 4, "SafeMath.sqrt failed.");
        ultrain_assert(SafeMath.square(12) == 144, "SafeMath.square failed.");
        ultrain_assert(SafeMath.pwr(2, 2) == 4, "SafeMath.pwr failed.");

        let a = u64.MAX_VALUE;
        let b: u64 = 9527;
        SafeMath.div(a, b);
        SafeMath.sub(a, b);
        // TODO(liangqin 下面两个测试一定assert，如何处理？)
        // SafeMath.add(a, b);
        // SafeMath.mul(a,b);
    }
}