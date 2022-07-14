#include <stdio.h>
#include <stdlib.h>

int main()
{
    int age = 30;
    int *pAge = &age; //* pAge (pointer var) stores the address of age variable
    printf("%d\n", pAge); // pAge in printf gives the memory address of age variable
    printf("%d\n", *pAge); // *pAge dereferences the pointer i.e: it gives the data stored in the address
    printf("%d\n", &*&age);
    return 0;
}
