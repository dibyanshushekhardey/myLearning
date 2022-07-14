#include <stdio.h>
#include <stdlib.h>

struct Student{
    char name[50];
    char major[50];
    int age;
    double gpa;
};

int main()
{
    struct Student student1; //student 1 will be able to store data bases in struct
    student1.age = 22;
    student1.gpa = 3.2;
    strcpy(student1.name, "Jim"); //strings can't be used like the above two lines so new function is used
    strcpy(student1.major, "Business");

    struct Student student2;
    student2.age = 22;
    student2.gpa = 3.2;
    strcpy(student2.name, "Pam");
    strcpy(student2.major, "Business");

    printf("%s", student2.name);
    return 0;
}
