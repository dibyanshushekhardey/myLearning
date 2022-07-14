#include <conio.h>

char p[] = "the sixth sick sheikh's sixth ship is sick";
int main(){
    int i = 0;
    while(p[i] != '\0'){
        putch(p[i]);
        i++;
    }
    return 0;
}