#include <stdio.h>

int main(){
    unsigned char b = 0x32; // binary 00110010
    b = b ^ 0x0C;
    printf("\n%02x", b);

    b = b ^ 0x0C;
    printf("\n%02x", b);

    return 0;
}