#include<stdio.h>
#include<conio.h>
#include<windows.h>
#include<math.h>

#define _BV(x) 1<<x

int checkbits(unsigned char num);

int main()
{
	int status;
	status = checkbits(200);
	if (status)
		printf("Required bits are ON\n");
	else
		printf("Required bits are OFF\n");
	_getch();
	return 0;
}

int checkbits(unsigned char num)
{
	unsigned char andmask;
	andmask = _BV(7) | _BV(6) | _BV(3);
	if ((num & andmask) == andmask)
		return 1;
	else
		return 0;
}