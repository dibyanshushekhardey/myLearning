#include<stdio.h>
int main()
{
	char buffer[50];
	int no = 97;
	double val = 2.34174;
	char name[10] = "Shweta";
	sprintf(buffer, "%d %lf %s", no, val, name);
	printf("\n%s", buffer);
	sscanf(buffer, "%4d %2.2lf %s", &no, &val, name);
	printf("\n%s", buffer);
	printf("\n%d %lf %s", no, val, name);
	return 0;
}