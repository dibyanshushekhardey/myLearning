#include <stdio.h>
#include <stdlib.h>
int fact_helper(int n, int ans){
        if (n <=0){
            return ans;
        }
        return fact_helper(n - 1, ans * n);
}

int factorial (int n){
    return fact_helper(n, 1);
}
int main()
{
    int f;
    printf("Enter your number: ");
    scanf("%d", &f );
    printf("The factorial is %d", factorial(f));
    return 0;
}
