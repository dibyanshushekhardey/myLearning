#include<stdio.h>
void show();
int main()
{
	void(*s)();
	s = show;
	(*s)();
	s();
	return 0;
}
void show()
{
	printf("don't show off. It won't pay in the long run\n");
}