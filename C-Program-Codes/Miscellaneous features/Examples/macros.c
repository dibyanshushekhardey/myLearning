#include <stdio.h>
#include <string.h>

#define ASSEMBLY 0
#define MANUFACTURING 1
#define ACCOUNTS 2
#define STORES 3

int main(){
    struct employee
    {
        char name[30];
        int age;
        float bs;
        int department;
    };

    struct employee e;
    strcpy(e.name, "Lottart Matthuews");
    e.age = 28;
    e.bs = 5575.50;
    e.department = MANUFACTURING;
    return 0;
}