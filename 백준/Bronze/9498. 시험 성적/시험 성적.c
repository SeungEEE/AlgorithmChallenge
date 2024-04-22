#include <stdio.h> //시험 성적

int main()
{
	int grade;

	scanf("%d", &grade);

	if (90 <= grade)
	{
		printf("A\n");
	}
	else if (80 <= grade)
	{
		printf("B\n");
	}
	else if (70 <= grade)
	{
		printf("C\n");
	}
	else if (60 <= grade)
	{
		printf("D\n");
	}
	else
	{
		printf("F\n");
	}

	return 0;
}