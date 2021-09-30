#include <iostream>

int digit_sum(int n) {
	return n / 100 + (n / 10) % 10 + n % 10;
}

int main() {
	int ans = 0;
	int D_SUM[1000];
	for (int i = 0; i < 1000; i++) D_SUM[i] = digit_sum(i);
	for (int x1 = 100; x1 < 1000; x1++) {
		if (x1 % D_SUM[x1] == 0)
			ans++;
		for (int x2 = x1 + 1; x2 < 1000; x2++)
			if (x1 % digit_sum(x2) == 0 && x2 % digit_sum(x1) == 0)
				ans += 2;
	}
	std::cout << ans << std::endl;
	return 0;
}
