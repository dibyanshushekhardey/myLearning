#include <stdio.h>

void display();
int main(){
    void (*func_ptr)();

    func_ptr = display;
    printf("Address of function display is %u", func_ptr);
    (*func_ptr)();
    return 0;
}

void display(){
    puts("\nLong live viruses!!");
}