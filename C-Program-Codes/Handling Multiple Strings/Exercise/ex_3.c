#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <malloc.h>
#include <windows.h>

int main(){
    char *s[] = {
        "To err is human",
        "But to really mess up things...",
        "One needs to know C!!"
    };
    char *p;
    for(int i = 0; i <= 2; i++){
        p = (char *)malloc(sizeof(s[i] + 1));
        strcpy(p, s[i]);
        _strrev(p);
        s[i] = p;
        puts(s[i]);
    }
    _getch();
    return 0;
}