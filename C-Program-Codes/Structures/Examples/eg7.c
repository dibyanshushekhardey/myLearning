// passing entire structure variable at a time

#include <stdio.h>
struct book {
    char name[25];
    char author[25];
    int callno;
};

void display(struct book);

int main(){
    struct book b1 = {"Harry Potter", "J K Rowling", 101};
    display(b1);
    return 0;

}

void display(struct book b1){
    printf("%s %s %d\n",b1.name, b1.author, b1.callno);
}