#include <stdio.h>
int fib(int x, int y)
{
	return fib(x-1, y) + fib(x - 1, y - 1);
}

int main ()
{
	int m = 20, n = 9;
	printf("%d", fib(m, n));
	//getchar();
	return 0;
}