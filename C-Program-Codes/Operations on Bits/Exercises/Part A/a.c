#include<stdio.h>
#include<conio.h>

#define _BV(x) 1<<x

int main()
{
	unsigned int color, j, k, andmask;
	int i;
	printf("\nEnter the number : ");
	scanf("%u", &color);
	for (i = 0; i <= 6; i++)
	{
		j = i;
		andmask = _BV(j);
		puts("");
		k = color & andmask;
		if (k > 0)
		{
			switch (i)
			{
			case 0:
				printf("Voilet, ");
				break;
			case 1:
				printf("Indigo, ");
				break;
			case 2:
				printf("Blue, ");
				break;
			case 3:
				printf("Green, ");
				break;
			case 4:
				printf("Yellow, ");
				break;
			case 5:
				printf("Orange, ");
				break;
			case 6:
				printf("Red, ");
				break;
			default:
				break;
			}
		}
	}
	_getch();
	return 0;
}
