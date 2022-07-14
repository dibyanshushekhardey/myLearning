#include<stdio.h>
int main()
{
	enum status {pass, fail, atkt};
	enum status stud1, stud2, stud3;
	stud1 = pass;
	stud2 = fail;
	stud3 = atkt;
	printf("%d %d %d\n", stud1, stud2, stud3);
	return 0;
}