#include <stdio.h>
#include <stdlib.h>

//computing recursive function
// to compute 0!  result is 1
// n! = n * (n - 1)! formula of factorial
// if n <= 0, result is 1

int factorial (int n){
    if (n <= 0){
        return 1;
    }
    else{
        int n_minus1_fact = factorial(n - 1);
        return n * n_minus1_fact;
    }
}
int main()
{
    int f;
    printf("Enter your number: ");
    scanf("%d", &f);
    factorial(f);
    printf("Your answer is %d", factorial(f));
    return 0;
}
