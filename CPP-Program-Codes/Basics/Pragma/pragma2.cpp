#include<iostream>
using namespace std;

void func1();
void func2();

void __attribute__((constructor)) func1();
void __attribute__((destructor)) func2();

void func1(){
    cout << "Inside func1()\n";
}

void func2(){
    cout << "Inside func2()\n";
}


// driver code

int main(){
    cout << "Inside main()\n";
    return 0;
}