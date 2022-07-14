//display contents pf file on the screen
#include <stdio.h>

int main(){
    FILE *fp;
    char ch;

    fp = fopen("PR1.c", "r");
    while (1)
    {
        /* code */
        ch = fgetc(fp);
        if(ch == EOF)
        break;
        printf("%c", ch);
    }
    printf("\n");
    fclose(fp);
    return 0;
    
}