#include <stdio.h>
#include <stdlib.h>

int main(){
    char str[6];

    printf("Enter the string containing number: ");
    scanf("%s", str);
    int x = atoi(str);
    printf("\nThe number is %d\n", x);
    return 0;
}