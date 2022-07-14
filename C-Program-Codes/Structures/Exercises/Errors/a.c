#include <stdio.h>
#include <string.h>

int main(){
    struct employee{
        char name[25];
        int age;
        float salary;
    };
    struct employee e;
    strcpy(e.name, "shailesh");
    int age = 25;
    float salary = 15500.00;
    printf("%s %d %f\n", e.name, age, salary);
    return 0;
}