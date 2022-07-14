#include<stdio.h>
#include<conio.h>

float f(float);

void main()
{
	static float y[30],x[30];
	float ITC,a,b,h,sum;
	int n,i;

	clrscr();
	printf("***********THIS PROGRAM IMPLEMENTS TRAPEZOIDAL RULE********\n\n");

	/* Taking inputs */
	printf("Enter the value of a = ");
	scanf("%f",&a);
	printf("Enter the value of b = ");
	scanf("%f",&b);
	printf("Enter the number of intervals =  ");
	scanf("%d",&n);

	/* Calculate the data points */
	h = (b - a)/n;      //length of the interval

	for(i=0;i<=n;i++)
	{
		x[i] = a + i*h;
		y[i] = f(x[i]);
	}

	/* Calculate ITC */
	sum = y[0] + y[n];
	for(i=1;i<n;++i)  sum = sum + 2 * y[i];
	ITC = (h/2)*sum;

	/*print result */
	printf("\n\nThe integration value ITC = %f",ITC);
	getch();
}

float f(float x)
{
	return(4*x - 3*x*x);
}
