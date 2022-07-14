#include<stdio.h>
int main()
{
	typedef struct patient
	{
		char name[20];
		int age;
		int systolic_bp;
		int diastolic_bp;
	}ptt;
	ptt p1 = { "anil", 23, 110, 220 };
	printf("%s %d\n", p1.name, p1.age);
	printf("%d %d\n", p1.systolic_bp, p1.diastolic_bp);
	return 0;
}