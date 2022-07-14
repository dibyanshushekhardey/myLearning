#include <stdio.h>
#include <stdlib.h>

int main()
{
    int age = 30;
    int * pAge = &age;  // * pAge (pointer var) stores the address of age variable
    double gpa = 3.4;
    double * pGpa = &gpa;  // * pGpa (pointer var) stores the address of gpa variable
    char grade = 'A';
    char * pGrade = &grade;  // * pGrade (pointer var) stores the address of grade variable 
    
    
    printf("age's memory address: %p\n", &age);
    return 0;
}
