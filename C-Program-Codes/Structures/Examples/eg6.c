//passing individual structure elements
#include <stdio.h>

void display(char *, char *, int);
int main(){
    struct book {
        char name[25];
        char author[25];
        int callno;
    };
    struct book b1 = {"Harry Potter", "J K Rowling", 101};
    display(b1.name, b1.author, b1.callno);
    return 0;
}

void display(char *s, char * t, int n){
    printf("%s %s %d\n", s, t, n);
}