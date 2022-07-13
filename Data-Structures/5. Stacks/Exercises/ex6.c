#include <stdio.h>
int fib(int x, int y)
{
	if (x < y)
		return 0;
	return fib(x-y, y) + 1;
}

int main ()
{
	int m = 10, n = 9;
	printf("%d", fib(m, n));
	getchar();
	return 0;
}