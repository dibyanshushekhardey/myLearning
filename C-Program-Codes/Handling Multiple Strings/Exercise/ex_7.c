#include <stdio.h>
#include <conio.h>
#include <windows.h>

#define Vowel line[i]=='A' || line[i] == 'a' || line[i] == 'E' || line[i] == 'e' || line[i] == 'i' || line[i] == 'I' || line[i] == 'O' || line[i] == 'o' || line[i] == 'u' || line[i] == 'U'

void delVow(char * line){
    int i, j;
    for(i = 0; line[i] = '\0'; i++){
        if(Vowel){
            for(j = i; line[j]!='\0';j++){line[j] = line[j + 1];}
            i--;
        }
    }
}

int main(){
    char line[80];
    printf("\n Enter the line: ");
    gets(line);
    delVow(line);
    printf("\nLine without the vowels\n");
    puts(line);
    getch();
    return 0;
}