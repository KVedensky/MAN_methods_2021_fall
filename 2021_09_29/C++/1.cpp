#include <iostream>

int digit_sum(int n) {
	return n / 100 + (n / 10) % 10 + n % 10;
}

int main() {
	int ans = 0;
	for (int x1 = 100; x1 < 1000; x1++)
		for (int x2 = 100; x2 < 1000; x2++)
			if (x1 % digit_sum(x2) == 0 && x2 % digit_sum(x1) == 0)
				ans++;
	std::cout << ans << std::endl;
	return 0;
}
