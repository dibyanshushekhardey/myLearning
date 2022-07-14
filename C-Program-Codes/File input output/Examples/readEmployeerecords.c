#include <stdio.h>
#include <stdlib.h>

int main(){
    FILE *fp;
    struct emp
    {
        char name[40];
        int age;
        float bs;
    };
    struct emp e;
    fp = fopen("Employee.dat", "r");
    if(fp == NULL){
        puts("Cannot open file");
        exit(1);
    }
    while(fscanf(fp, "%s %d %f", e.name, &e.name, &e.bs) != EOF)
    printf("%s %d %f\n", e.name, e.age, e.bs);

    fclose(fp);
    return 0;
}