#include<stdio.h>
#include<conio.h>
#include<math.h>

#define _BV(x) (1<<x)

void showinfo(int);

int main()
{
	int rnum, search;
	int data[] = { 273, 548, 786, 1096 };
	printf("\nEnter the room number : ");
	scanf("%d", &rnum);

	for (int i = 0; i < 4; i++)
	{
		search = 0;
		for (int j = 8; j < 16; j++)
			if (data[i] & _BV(j))
				search += (pow(2, j - 8));
		if (rnum == search)
		{
			showinfo(data[i]);
			break;
		}
	}
	_getch();
	return 0;
}

void showinfo(int a)
{
	int search = 0;
	for (int i = 0; i < 16; i++)
	{
		//If a non zero bit is encountered
		if (a & _BV(i))
		{
			if (i < 4)
			{
				printf("\n\nYear: ");
				switch(i)
				{
				case 0:
					printf("First\n");
					break;
				case 1:
					printf("Second\n");
					break;
				case 2:
					printf("Thrid\n");
					break;
				case 3:
					printf("Fourth\n");
				default:;
				}
			}
			else if (i > 7)
				/*calculating room number*/
				search += (pow(2, i - 8));
			else
			{
				printf("Branch: ");
				switch (i)
				{
				case 4:
					printf("Mechanical\n");
					break;
				case 5:
					printf("Chemical\n");
					break;
				case 6:
					printf("Electronics\n");
					break;
				case 7:
					printf("IT\n");
				default:;

				}
			}
		}
	}
	printf("Room Number: %d\n", search);
}