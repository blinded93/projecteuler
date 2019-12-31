function lpf(num) {
	let i = 2
	let largest = 0
	const isPrime = n => {
		if (n < 2)      return false
		if (n % 2 == 0) return false
		if (n % 3 == 0) return false

		const sqrt = Math.sqrt(n)
	
		for (let i = 5; i <= sqrt; i += 6 ) {
			if (n % i == 0)       return false
			if (n % (i + 2) == 0) return false
		}

		return true
	}

	for (let i = 2; i < num; i++) {
		if (num % i == 0) {
			let factor = num / i

			if (isPrime(factor)) {
				largest = factor
				break
			}
		}
	}

	return largest
}