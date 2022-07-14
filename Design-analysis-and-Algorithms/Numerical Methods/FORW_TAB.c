#include<stdio.h>
#include<conio.h>

void main()
{
	static float forw_table[30][30];
	int i,j,k,n;
	float u,term,h,inp_x,est_y,x0,sum,y0;

	printf("\nEnter number of data points required --> ");
	scanf("%d",&n);
	printf("\nEnter your data \n");
	for(i=0;i<n;++i)
	{
		printf("\nEnter x[%d] = ",i);
		scanf("%f",&forw_table[i][0]);

		printf("\nEnter y[%d] = ",i);
		scanf("%f",&forw_table[i][1]);
	}
	printf("\nEnter a input x value for estimation --> ");
	scanf("%f",&inp_x);

	for(j = 2;j<=n;++j)
	{
		for(i=0;i<n-j+1;++i)
			forw_table[i][j] = forw_table[i+1][j-1] - forw_table[i][j-1];
	}

	printf("\nThe forward differnce table is given below::\n");
	printf("\n\n\t  X\t  Y\t  dy");
	if(n>=3)
		for(i=3;i<=n;++i)  printf("\td%dy    ",i-1);
	printf("\n\n");
	for(i=0;i<n;++i)
	{
		for(j=0;j<=n;++j)  printf("\t%3.2f",forw_table[i][j]);
		printf("\n\n");
	}

	x0 = forw_table[0][0];
	h = forw_table[1][0] - x0;
	u = (inp_x - x0)/h;
	y0 = forw_table[0][1];

	sum = y0;
	term = 1;
	for(j = 2;j<=n;++j)
	{
		term = term * u/(j-1);
		sum = sum + term*forw_table[0][j];
		u = u-1;
	}
	est_y = sum;

	printf("\n\nThe estimated value for x = %fis y = %f",inp_x,est_y);
	getch();
}
