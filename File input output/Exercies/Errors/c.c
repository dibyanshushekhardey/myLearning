#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
int main(){
    FILE *fp;
    char str[80];
    fp = fopen("Try.c", "r");
    while(fgets(str, 80, fp) != EOF){
        fputs(str, 2);
    }
    fclose(fp);
    return 0;
}