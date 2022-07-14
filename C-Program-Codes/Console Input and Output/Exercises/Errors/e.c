#include<stdio.h>
int main()
{
	int dd, mm, yy;
	printf("\nEnter day, month and year\n");
	scanf("%d%*c%d%*c%d", &dd, &mm, &yy);
	printf("The date is: %d - %d - %d", dd, mm, yy);
	return 0;
}