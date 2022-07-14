#include<stdio.h>
#include<conio.h>
#include<stdarg.h>

void type(int, ...);

int main()
{
	type(5, 4, 6, 3, 6, 7);
	return 0;
}

void type(int point, ...)
{
	if (point < 1)
	{
		printf("Nothing can be draw.");
		return;
	}
	switch (point)
	{
	case 1:
		printf("A point can be drawn.\n");
		break;
	case 2:
		printf("A line can be drawn.\n");
		break;
	case 3:
		printf("A triangle can be drawn.\n");
		break;
	case 4:
		printf("A rectangle can be drwan.\n");
		break;
	case 5:
		printf("A pentagon can be drawn.\n");
		break;
	case 6:
		printf("A hexagon can be drawn.\n");
		break;
	default:
		printf("A polygon can be drawn.\n");
	}
}