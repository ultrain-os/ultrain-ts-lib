import { Contract } from "../../../src/contract";
import { bn_gcd, bn_cmp, bn_mul, bn_pow_mod, bn_is_probab_prime } from "../../../src/big_number";

class BigNumberContract extends Contract {

    @action
    test(): void {
        const a = "978";
        const b = "89798763754892653453379597352537489494736";
        const base = 10;

        ultrain_assert(bn_gcd(a, b, base) == "6", "big_number.bn_gcd failed.");
        ultrain_assert(bn_cmp(a, b, base) < 0, "big_number.bn_cmp expect -1");
        ultrain_assert(bn_cmp(b, b, base) == 0, "big_number.bn_cmp expect 0");
        ultrain_assert(bn_cmp(b, a, base) > 0, "big_number.bn_cmp expect 1");
        ultrain_assert(bn_mul(a, a, base) == "956484", "big_number.bn_mul exception.");

        let m = "25";
        let e = "2";
        let n = "100";
        let expect = "25";
        ultrain_assert(bn_pow_mod(m, e, n, base) == expect, "big_number.bn_pow_mod exception.");

        ultrain_assert(bn_is_probab_prime("13", 25, base) == 2, "big_number.bn_is_probab_prime expect 2");
        ultrain_assert(bn_is_probab_prime("100000937", 25, base) == 1, "big_number.bn_is_probab_prime expect 1");
        ultrain_assert(bn_is_probab_prime("1000009377854658745215874985745215485469857425742", 25, base) == 0, "big_number.bn_is_probab_prime expect 0");
    }
}
