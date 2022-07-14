#include <stdio.h>
#include <stdlib.h>

int main(){
    FILE *fs, *ft;
    char ch;
    fs = fopen("PR1.c", "r");
    if(fs == NULL){
        puts("Cannot open source file");
        exit(1);
    }
    
    ft = fopen("pr2.c", "w");
    if(ft == NULL){
        puts("Cannot open the target file");
        fclose(fs);
        exit(2);
    }
    while(1){
        ch = fgetc(fs);
        if(ch == EOF){
            break;
        }
        else{
            fputc(ch, ft);
        }
    }
    fclose(fs);
    fclose(ft);
    return 0;
}