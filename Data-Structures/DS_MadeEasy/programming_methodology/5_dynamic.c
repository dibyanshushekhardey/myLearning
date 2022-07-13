#include <stdio.h>
int count = 50;
void func1(){
    printf("In func1=%d ", count);
}
void func2(){
    //int count = 20;
    func1();
}

void func3(){
    int count=30;
    func2();
}

int main(void){
    func3();
    return 0;
}