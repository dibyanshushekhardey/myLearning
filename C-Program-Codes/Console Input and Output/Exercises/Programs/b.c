#include <stdio.h>
#include <conio.h>
int main(){
    int a;
    char s[80];
    printf("Enter a numeric string...");
    gets(s);
    a = getint(s);
    printf("You entered %d\n", a);
    return 0;
}

int getint(char s1[80]){
    int digit;
    digit = atoi(s1);
    return digit;
}