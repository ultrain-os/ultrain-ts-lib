/**
 *  Math operations with safety checks that throw on error
 */
export class SafeMath {

	/**
	 * Multiplies two numbers, throws on overflow.
	 */
	mul(a: u64, b: u64): u64 {
		if (a == 0) {
			return 0;
		}
		let c = a * b;
		assert(c / a == b, `${a} mulitiply ${b} overflow`);
		return c;
	}

	/**
	 * Integer division of two numbers, truncating the quotient
	 */
	div(a: u64, b: u64): u64 {
		assert(b != 0, `Can't dividing by 0`);
		return a / b;
	}

	/**
	 * Subtracts two numbers, throws on overflow 
	 * if subtrahend is greater than minuend
	 * @param a the mimuend number
	 * @param b the subtrahead number
	 */
	sub(a: u64, b: u64): u64 {
		assert(b <= a, `Minuend is greater than subtrahend`);
		return a - b;
	}

	/**
	 * Add two nubmers, throws on overflow.
	 */
	add(a: u64, b: u64): u64 {
		let c = a + b;
		assert(c >= a, `SafeMath add failed`);
		return c;
	}

	/**
	 * gives square root of given x.
	 * @param x 
	 */
	sqrt(x: u64): u64 {
		let z = ((this.add(x, 1)) / 2);
		let y = x;
		while (z < y) {
			y = z;
			z = ((this.add((x / z), z)) / 2);
		}
		return y;
	}

	/**
     * gives square. multiplies x by x
     */
	square(x: u64): u64 {
		return (this.mul(x, x));
	}

	/**
	 *  x to the power of y
	 */
	pwr(a: u64, b: u64): u64 {
		if (a == 0) {
			return 0;
		} else if (b == 0) {
			return 1;
		} else {
			let c = a;
			for (let i = 1; i < b; i++) {
				c = this.mul(c, a);
			}
			return c;
		}
	}
}