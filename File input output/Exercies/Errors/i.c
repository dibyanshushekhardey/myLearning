#include <stdio.h>
#include <fcntl.h>
int main(){
    int fp;
    fp = fopen("students.dat", O_RDONLY | O_BINARY);
    if(fp == -1){puts("cannot open file\n");}
    else{fclose(fp);}

    return 0;
}