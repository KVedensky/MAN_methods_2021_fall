#include <iostream>

bool isPrime(int n) {
	for (int i = 2; i * i <= n; i++)
		if (n % i == 0)
			return false;
	return true;
}

int main() {
	int ans = 0;
	for (int x1 = 1000; x1 < 10000; x1++) {
		if (!isPrime(x1))
			continue;
		for (int d = 1; d <= (10000 - x1) / 3; d++)
			if (isPrime(x1 + d) && isPrime(x1 + 2 * d) && isPrime(x1 + 3 * d))
				ans++;
	}
	std::cout << ans << std::endl;
	return 0;
}
