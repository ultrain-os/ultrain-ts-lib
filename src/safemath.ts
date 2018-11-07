/**
 *  Math operations with safety checks that throw on error
 *
 * @example
 * import { SafeMath } from "ultrain-ts-lib/src/safemath";
 */
export namespace SafeMath {

	/**
	 * Multiplies two numbers, throws on overflow.
	 */

	function mul(a: u64, b: u64): u64 {
		if (a == 0) {
			return 0;
		}
		var c = a * b;
		ultrain_assert(c / a == b, `${a} mulitiply ${b} overflow`);
		return c;
	}

	/**
	 * Integer division of two numbers, truncating the quotient
	 */

	function div(a: u64, b: u64): u64 {
		ultrain_assert(b != 0, `Can't dividing by 0`);
		return a / b;
	}

	/**
	 * Subtracts two numbers, throws on overflow
	 * if subtrahend is greater than minuend
	 * @param a the mimuend number
	 * @param b the subtrahead number
	 */
	function sub(a: u64, b: u64): u64 {
		ultrain_assert(b <= a, `Minuend is greater than subtrahend`);
		return a - b;
	}

	/**
	 * Add two nubmers, throws on overflow.
	 */

	function add(a: u64, b: u64): u64 {
		var c = a + b;
		ultrain_assert(c >= a, `SafeMath add failed`);
		return c;
	}

	/**
	 * gives square root of given x.
	 * @param x
	 */
	function sqrt(x: u64): u64 {
		var z = (add(x, 1) / 2);
		var y = x;
		while (z < y) {
			y = z;
			z = (add((x / z), z) / 2);
		}
		return y;
	}

	/**
     * gives square. multiplies x by x
     */
	function square(x: u64): u64 {
		return mul(x, x);
	}

	/**
	 *  x to the power of y
	 */
	 function pwr(a: u64, b: u64): u64 {
		if (a == 0) {
			return 0;
		} else if (b == 0) {
			return 1;
		} else {
			let c = a;
			for (let i: u64 = 1; i < b; i++) {
				c = mul(c, a);
			}
			return c;
		}
	}

	function random(seed: u64): u64 {
		return seed;
	}

}