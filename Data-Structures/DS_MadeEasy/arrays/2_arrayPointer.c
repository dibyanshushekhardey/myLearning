#include <stdio.h>
int main(){
    float a=0.0, b=1, c=2.0;
    float *arr[]={&a, &b, &c};
    b=a+c;
    printf("%f", b);
    return 0;
}