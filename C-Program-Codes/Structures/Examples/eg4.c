#include <stdio.h>
#include <string.h>

int main(){
    struct employee{
        char name[10];
        int age;
        float salary;
    };
    struct employee e1 = {"Sanjay", 30, 5500.50};
    struct employee e2, e3;
    strcpy(e2.name, e1.name); // always use strcpy to copy strings in variables
    e2.age = e1.age;
    e2.salary = e1.salary;
    // all elements at one go
    e3 = e2;

    printf("%s %d %f\n", e1.name, e1.age, e1.salary);
    printf("%s %d %f\n", e2.name, e2.age, e2.salary);
    printf("%s %d %f\n", e3.name, e3.age, e3.salary);
    return 0;
}