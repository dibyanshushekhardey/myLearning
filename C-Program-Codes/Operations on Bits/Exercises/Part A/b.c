#include<stdio.h>
#include<conio.h>
#include<windows.h>
#include<math.h>

#define _BV(x) 1<<x

//Binary To Decimal
int bintodec(int *);
void initinfo(int *);
void addinfo(int*);

int main()
{
	int i, information[10], eng_daily, up_tabloid, regional;
	eng_daily = up_tabloid = regional = 0;
	unsigned int andmask, j;
	for (i = 0; i <= 9; i++)
	{
		printf("\nRespondent number %d\n", i + 1);

		addinfo(&information[i]);
		//	000100100	(people that reads english(3) daily(6),)
		andmask = _BV(2) | _BV(5);
		j = information[i] & andmask;
		if (j == andmask)
			eng_daily++;

		//	100000001	(people with Upper(0) class and tabloid(8))
		andmask = _BV(0) | _BV(8);
		j = information[i] & andmask;
		if (j == andmask)
			up_tabloid++;

		//	000001000 (people that reads in regional(5))
		andmask = _BV(3);
		j = information[i] & andmask;
		if (j == andmask)
			regional++;
	}

	printf("\nStatical Data :-\n");
	printf("\nPersons read English newspaper : %d", eng_daily);
	printf("\nPersons belongs to Upper class and read Tabloid are : %d", up_tabloid);
	printf("\nPersons read newspaper in regional language are : %d", regional);
	_getch();
	return 0;
}

int bintodec(int *num)
{
	int i, dec = 0;
	for (i = 0; i <= 8; i++)
		dec += num[i] * (int)pow(2, 8 - i);
	return dec;
}

void initinfo(int *information)
{
	int i;
	for (i = 0; i <= 8; i++)
		information[i] = 0;
}

void addinfo(int *information)
{
	int choice, info[9];
	printf("\nChoose your economical class\n");
	printf("1. Upper Class\n2. Middle Class\n");
	printf("3. Lower Class\n");
	scanf("%d", &choice);
	initinfo(info);
	switch (choice)
	{
	case 1:
		info[0] = 1;
		break;
	case 2:
		info[1] = 1;
		break;
	case 3:
		info[2] = 1;
	default:
		break;
	}
	printf("\nChoose your language\n");
	printf("1. English\n2. Hindi\n3. Regional\n");
	scanf("%d", &choice);
	switch (choice)
	{
	case 1:
		info[3] = 1;
		break;
	case 2:
		info[4] = 1;
		break;
	case 3:
		info[5] = 1;
		break;
	default:
		break;
	}
	printf("\nChoose your newspaper category\n");
	printf("\n1. Daily\n2. Supplement\n3. Tabloid\n");
	scanf("%d", &choice);
	switch (choice)
	{
	case 1:
		info[6] = 1;
		break;
	case 2:
		info[7] = 1;
		break;
	case 3:
		info[8] = 1;
		break;
	default:
		break;
	}
	*information = bintodec(info);
	system("cls");
}