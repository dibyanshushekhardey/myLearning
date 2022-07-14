#include<stdio.h>
#include<conio.h>

void xgets();
void xputs();

void main() {
    char str[80];
    //clrscr();
    xgets(str);
    printf("\n");
    xputs(str);
    getch();
}

void xgets( char *s) {
    int i=0;
    char ch;
    for(i=0;i<=79;i++) {
        ch=getche();
        if(ch=='\r') {
            *s='\0';
            break;
        }
        if(ch=='\b') {
            printf("\b");
            i-=2;
            s-=2;
            }
        else {
            *s=ch;
            s++;
            }
    }
}

void xputs( char *s) {
    while(*s!='\0') {
        putch(*s);
        s++;
        }
}