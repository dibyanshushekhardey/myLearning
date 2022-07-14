#include <stdio.h>
int main()
{
	char *text;
	sprintf(text, "%4d\t%2.2f\n%s", 12, 3.452, "Merry Go Round");
	printf("\n%s", text);
	return 0;
}