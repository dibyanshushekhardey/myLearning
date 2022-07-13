#include <stdio.h>
union A{
    char p;
    float *const q;
};

int main(){
    union A arr[10];
    printf("%d", sizeof arr);
    return 0;
}