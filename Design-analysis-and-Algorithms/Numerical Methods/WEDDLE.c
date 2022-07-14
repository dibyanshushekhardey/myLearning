#include<stdio.h>
#include<conio.h>

float f(float);

void main()
{
	static float y[30],x[30];
	float a,b,h;
	double IWC,sum;
	int n,i,m;

	clrscr();
	printf("***********THIS PROGRAM IMPLEMENTS weddle's RULE********\n\n");

	/* Taking inputs */
	printf("Enter the value of a = ");
	scanf("%f",&a);
	printf("Enter the value of b = ");
	scanf("%f",&b);
	printf("Enter the number of intervals =  ");
	scanf("%d",&n);
	m = 6*n;
	/* Calculate the data points */
	h = (b - a)/m;      //length of the interval

	for(i=0;i<=m;i++)
	{
		x[i] = a + i*h;
		y[i] = f(x[i]);
	}

	/* Calculate IWC */
	sum = y[0] + y[m];         // sum of first term and last term
	for(i=1;i<m;i+=6)  sum = sum + 5 * y[i];//sum of first series of terms
	for(i=2;i<m;i+=6)  sum = sum + y[i]; //sum of second series of terms
	for(i=3;i<m;i+=6)  sum = sum + 6 * y[i];//sum of third series of terms
	for(i=4;i<m;i+=6)  sum = sum + y[i]; //sum of fourth series of terms
	for(i=5;i<m;i+=6)  sum = sum + 5 * y[i];//sum of fifth series of terms
	for(i=6;i<m;i+=6)  sum = sum + 2*y[i]; //sum of sixth series of terms

	IWC = (3*h/10)*sum;

	/*print result */
	printf("\n\nThe integration value IWC = %lf",IWC);
	getch();
}

float f(float x)
{
	return(4*x - 3*x*x);
}
