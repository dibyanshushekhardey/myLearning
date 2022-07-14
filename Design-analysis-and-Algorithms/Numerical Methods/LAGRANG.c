#include<stdio.h>
#include<conio.h>

void main()
{
	static float x[30],y[30];
	int i,j,n,ord_pol;
	float inp_x,est_y,pol_val,basis;

	printf("\nEnter number of data points required --> ");
	scanf("%d",&n);
	printf("\nEnter your data \n");
	for(i=0;i<n;++i)
	{
		printf("\nEnter x[%d] = ",i);
		scanf("%f",&x[i]);

		printf("\nEnter y[%d] = ",i);
		scanf("%f",&y[i]);
	}
	printf("\nEnter a input x value for estimation --> ");
	scanf("%f",&inp_x);

	ord_pol=n-1;

	pol_val = 0;
	for(i = 0;i<=ord_pol;++i)
	{
		basis = 1;
		for(j=0;j<= ord_pol;++j)
			if(j!=i)
				basis = basis*(inp_x - x[j])/(x[i] - x[j]);
		pol_val = pol_val + basis*y[i];
	}

	est_y = pol_val;
	printf("\nThe input data as given below:\n\n");
	printf("\tX\tY\n\n");
	for(i=0;i<n;++i)
		printf("\t%5.3f\t%5.3f\n",x[i],y[i]);
	printf("\n\nThe estimated value for x = %5.3f is y = %5.3f",inp_x,est_y);
	getch();
}
