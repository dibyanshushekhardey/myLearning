#include<stdio.h>
int main(){
    int arr[5]={100, 200, 300};
    int *ptr1=arr;
    printf("%d", *(ptr1+2));
    return 0;
}