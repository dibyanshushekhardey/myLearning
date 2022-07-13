#include <stdio.h>
int fib(int x)
{
	if (x == 1)
		return 0;
	return fib(x / 2) + 1;
}

int main ()
{
	int m = 10;
	printf("%d", fib(m));
	getchar();
	return 0;
}