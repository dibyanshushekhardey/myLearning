#include <stdio.h>
#include <string.h>

int main(){
    enum emp_dept{
        assembly, manufacturing, accounts, stores

    };

    struct employee {
        char name[30];
        int age;
        float bs;
        enum emp_dept department;
    };

    struct employee e;
    strcpy(e.name, "Lothar Matthews");
    e.age = 28;
    e.bs = 5575.50;
    e.department = manufacturing;

    printf("Name = %s\n", e.name);
    printf("Age = %d\n", e.age);
    printf("Basic Salary = %f\n", e.bs);
    printf("Dept = %d\n", e.department);

    if(e.department == accounts)
    printf("%s is an accountant\n", e.name);
    else
    printf("%s is not an accountant\n", e.name);

    return 0;

}