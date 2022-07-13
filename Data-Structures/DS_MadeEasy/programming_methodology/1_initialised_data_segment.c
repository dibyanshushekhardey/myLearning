#include <stdio.h>
char c[]= "MadeEasy"; // global variable stored in inititalised data segment in read4-write area
const char p[] = "madeEasy";  // global variableb sored in inititalised data segmnet in read only area
int main(){
    static int a = 10; // static variable stored ininitialised data segmemt 
    return 0;
}