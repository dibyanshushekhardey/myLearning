#include <stdio.h>
int main(){
    FILE *fp;
    char ch;
    fp = fopen("TRIAL", "w");
    while(!feof(fp)){
        ch = fgetc(fp);
        if(ferror(fp)){
            printf("Error in reading the file\n");
            break;

        }
        else{
            printf("%c", ch);
       
        }
    }
    fclose(fp);
    return 0; 
}