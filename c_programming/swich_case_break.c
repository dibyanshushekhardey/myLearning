#include <stdio.h>
#include <stdlib.h>

int main()
{
    char grade = 'A';

    switch(grade){
    case 'A':
        printf("You did great here!");
        break;
    case 'B':
        printf("You did alright here!");
        break;
    case 'C':
        printf("You did poorly!");
        break;
    case 'D':
        printf("You did very badly!");
        break;
    case 'F':
        printf("You did FAILED!");
        break;
    }
    return 0;
}
