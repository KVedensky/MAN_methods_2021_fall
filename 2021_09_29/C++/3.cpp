#include <iostream>

int digit_sum(int n) {
	int ans = 0;
	while (n > 0) {
		ans += n % 10;
		n /= 10;
	}
	return ans;
}

bool isPrime(int n) {
	for (int i = 2; i * i <= n; i++)
		if (n % i == 0)
			return false;
	return true;
}

int main() {
	int ans = 0;
	for (int n = 10000; n < 100000; n++)
		if (isPrime(n) && isPrime(digit_sum(n)))
			ans++;
	std::cout << ans << std::endl;
	return 0;
}
