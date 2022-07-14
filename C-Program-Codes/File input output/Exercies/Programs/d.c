#include<stdio.h>
#include<conio.h>
#include<string.h>
int main()
{
	char str[50];
	FILE *f1, *f2;
	f1 = fopen("File (c).txt", "r");
	f2 = fopen("File (d)2.txt", "w");
	while (fgets(str, 49, f1) != NULL)
	{
		_strupr(str);
		fputs(str, f2);
	}
	_getch();
	return 0;
}