#include<stdio.h>
#include<conio.h>

float f(float);

void main()
{
	static float y[30],x[30];
	float a,b,h;
	double ISC,sum;
	int n,i,m;

	clrscr();
	printf("***********THIS PROGRAM IMPLEMENTS simpson's one third RULE********\n\n");

	/* Taking inputs */
	printf("Enter the value of a = ");
	scanf("%f",&a);
	printf("Enter the value of b = ");
	scanf("%f",&b);
	printf("Enter the number of intervals =  ");
	scanf("%d",&n);
	m = 2*n;;
	/* Calculate the data points */
	h = (b - a)/m;      //length of the interval

	for(i=0;i<=m;i++)
	{
		x[i] = a + i*h;
		y[i] = f(x[i]);
	}

	/* Calculate ISC */
	sum = y[0] + y[m];         // sum of first term and last term
	for(i=1;i<m;i+=2)  sum = sum + 4 * y[i]; //sum of odd term
	for(i=2;i<m;i+=2)  sum = sum + 2 * y[i]; //sum of even terms
	ISC = (h/3)*sum;

	/*print result */
	printf("\n\nThe integration value ISC = %lf",ISC);
	getch();
}

float f(float x)
{
	return(4*x - 3*x*x);
}
