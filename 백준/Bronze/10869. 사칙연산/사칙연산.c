#include <stdio.h>

int main()
{
	int a, b;
	int res1, res2, res3, res4, res5;

	scanf("%d%d", &a, &b);

	res1 = a + b;
	res2 = a - b;
	res3 = a * b;
	res4 = a / b;
	res5 = a % b;

	printf("%d\n%d\n%d\n%d\n%d\n", res1, res2, res3, res4, res5);

	return 0;
}