#include <stdio.h>

void showbits(unsigned char n){
    int i;
    unsigned char j, k, andmask;
    for(i = 7; i >= 0; i--){
        j = i;
        andmask = 1 << j;
        k = n & andmask;
        k == 0 ? printf("0") : printf("1");
    }
}


int main(){
    unsigned char num, k;
    for(num = 0; num <= 3; num++){
        printf("\nDecimal %d is same as binary ", num);
        showbits(num);

        k =~ num;
        printf("\nOne's complement of %d is ", num);
        showbits(num);
    }
    return 0;
}