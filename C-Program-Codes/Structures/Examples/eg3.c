//using an array of structures
#include <stdio.h>
void linkfloat();

int main(){
    struct book
    {
        /* data */
        char name;
        float price;
        int pages;
    };
    
    struct book b[100];
    int i;

    for(i = 0; i <= 99; i++){
        printf("Enter name, price and pages");
        fflush(stdin);
        scanf("%c%f%d\n", &b[i].name, &b[i].price, &b[i].pages);
    }

    for (i = 0; i <= 99; i++)
    printf("%c%f%d\n", b[i].name, b[i].price, b[i].pages);

    return 0;
}

void linkfloat(){
    float a = 0, *b;
    b = &a;
    a = *b;
}