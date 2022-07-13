#include <stdio.h>
int count = 50;
void func1(){
    printf("In func1=%d ", count);
}
void func2(){
    int count = 20;
    func1();
}

int main(void){
    func2();
    return 0;
}