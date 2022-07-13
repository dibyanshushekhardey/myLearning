#include<stdio.h>
int main(){
    int i = 15;
    int j = 20;
    int *ptr = &i;
    printf("*ptr: %d\n", *ptr);
    //printf("%d\n",*ptr);
    ptr = &j;
    printf("* ptr: %d\n", *ptr);
    *ptr = 200;
    printf("*ptr: %d\n", *ptr);
    return 0;
}