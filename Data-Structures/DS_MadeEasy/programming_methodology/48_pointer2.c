#include <stdio.h>
int main(void){
    int i = 15;int j = 20;
    const int *ptr=&i;
    printf("*ptr: %d\n", *ptr);
    *ptr=200;
    ptr=&j; 
    printf("*ptr: %d\n", *ptr);
    return 0;
}