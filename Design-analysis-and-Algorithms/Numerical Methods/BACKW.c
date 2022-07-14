#include<stdio.h>
#include<conio.h>

void main()
{
	static float backw_table[30][30];
	float inp_x,est_y,xn,yn,h,u,sum,term;
	int i,j,k,n;

	clrscr();
	printf("\nEnter number of data points required --> ");
	scanf("%d",&n);
	printf("\nEnter your data \n");
	for(i=0;i<n;++i)
	{
		printf("\nEnter x[%d] = ",i);
		scanf("%f",&backw_table[i][0]);

		printf("\nEnter y[%d] = ",i);
		scanf("%f",&backw_table[i][1]);
	}


	for(j = 2;j<=n;++j)
	{
		for(i=j-1;i<n;++i)
			backw_table[i][j] = backw_table[i][j-1] - backw_table[i-1][j-1];
	}

	printf("\nThe Backward differnce table is given below::\n");
	printf("\n\n\t  X\t  Y\t  dy");
	if(n>=3)
		for(i=3;i<=n;++i)  printf("\td%dy    ",i-1);
	printf("\n\n");
	for(i=0;i<n;++i)
	{
		for(j=0;j<=n;++j)  printf("\t%3.2f",backw_table[i][j]);
		printf("\n\n");
	}

	printf("\nEnter x value for which y is to be estimated = ");
	scanf("%f",&inp_x);
	xn = backw_table[n-1][0];
	h = xn - backw_table[n-2][0];
	u = (inp_x - xn)/h;
	yn = backw_table[n-1][1];

	sum = yn;
	term = 1;
	for(j = 2;j<=n;++j)
	{
		term = term * u/(j-1);
		sum = sum + term*backw_table[n-1][j];
		u = u+1;
	}
	est_y = sum;

	printf("\n\nThe estimated value for x = %fis y = %f",inp_x,est_y);
	getch();
}
