#include <stdio.h>
#define BV(x) ( 1 << x )

int main(){
    unsigned char a;
    a = BV(3);
    printf("a = %02x", a);
    return 0;
     
}