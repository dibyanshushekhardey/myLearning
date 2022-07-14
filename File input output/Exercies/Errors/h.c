#include <stdio.h>
#include <fcntl.h>

int main(){
    int fp;
    fp = fopen("pr2.c", O_RDONLY);
    if(fp == -1)
    puts("cannot open file\n");
    else
    close(fp);
    return 0;
}