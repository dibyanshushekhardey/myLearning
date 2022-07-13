#include <stdio.h>
int fib(int x, int y)
{
	if ((x == 0) || ((x >= y) && (y >= 1)))
		return 1;
	return fib(x-y, y) + fib(x - 1, y - 1);
}

int main ()
{
	int m = 10, n = 9;
	printf("%d", fib(m, n));
	getchar();
	return 0;
}