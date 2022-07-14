#include <stdio.h>
#include <stdlib.h>
int main(){
    FILE *fp;
    fp = fopen("PR1.c", "r");
    if(fp == NULL){
        puts("cannot open file");
        exit(1);
    }
    return 0;
}