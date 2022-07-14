#include <stdio.h>

int main(int argc, char *argv[])
{
	int a,b, result;
	char opr;
	
	if(argc!=4)
	{
		printf("Invalid arguments...\n");
		return -1;
	}
	
	//get values
	a = atoi(argv[1]);
	b = atoi(argv[3]);
	
	//get operator
	opr=argv[2][0];
	
	//calculate according to operator
	switch(opr)
	{
		case '+':
			result=a+b;
			break;
		case '-':
			result=a-b;
			break;
		case '*':
			result=a*b;
			break;
		default:
			result=0;
			break;
	}
	
	if(opr=='+' || opr=='-' || opr=='*')
		printf("Result: %d %c %d = %d\n",a,opr,b,result);
	else
		printf("Undefined Operator...\n");
	
	return 0;
}