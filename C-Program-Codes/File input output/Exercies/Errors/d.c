#include <stdio.h>
int main(){
    char fname[] = "c:\\students.dat";
    FILE *fp;
    fp = fopen(fname, "fr");
    if(fp == NULL)
    printf("Unable to open file...\n");
    return 0;
}