#include <stdio.h>
char c;  // uninitialised variable stored in basic bss
int main(){
    static int i; // uninitialised static variable stored in bss
    return 0;
}

