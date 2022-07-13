#include <stdio.h>
int main(){
    int arr[]={1, 2, 5, 7, 8, 0, 11, 5, 90};
    int i, avg;
    for(i=0; i < 12; i++){
        avg=avg+arr[i];
    }
    printf("%d", avg/12);
    return 0;
}