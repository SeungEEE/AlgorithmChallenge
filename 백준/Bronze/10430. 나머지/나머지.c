#include <stdio.h>

int main()
{
	int A, B, C;
	int res1, res2, res3, res4;

	scanf("%d%d%d", &A, &B, &C);

	res1 = (A + B) % C;
	res2 = (A%C + B%C) % C;
	res3 = (A*B) % C;
	res4 = ((A%C)*(B%C)) % C;

	printf("%d\n%d\n%d\n%d\n", res1, res2, res3, res4);

	return 0;
}