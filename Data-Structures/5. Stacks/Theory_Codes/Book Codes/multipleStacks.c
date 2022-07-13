#include <stdio.h>
#include <conio.h>
#define MAX 10
int stack[MAX], topA = 1, topB = MAX;
void pushA(int val){
    if(topA == topB - 1)
    printf("\n Overflow");
    else{
        topA += 1;
        stack[topA] = val;
    }
}

int popA(){
    int val;
    if(topA == -1){
        printf("\n UNDERFLOW");
        val = -999;
    }
    else{
        val = stack[topA];
        topA--;
    }
    return val;
}


void display_stackA(){
    int i;
    if(topA == -1)
    printf("\n Stack A is empty");
    else{
        for(i = topA; i>= 0;i--)
        printf("\t %d", stack[i]);
    }
}

void pushB(int val){
    if(topB - 1 == topA)
    printf("\n Overflow");
    else{
        topB -= 1;
        stack[topB] = val;
    }
}

int popB(){
    int val;
    if(topB == MAX){
        printf("\n UNDERFLOW");
        val = -999;
    }
    else{
        val = stack[topB];
        topB++;
    }
}

void display_stackB(){
    int i;
    if(topB == MAX){
        printf("\n Stack B is empty");
    }
    else{
        for(i = topB; i < MAX; i++)
        printf("\t %d", stack[i]);
    }
}

void main(){
    int val, option;
    do{
        printf("\n *****MAIN MENU*****");
        printf("\n 1. PUSH in STACK A");
        printf("\n 2. PUSH in STACK B");
        printf("\n 3. POP from STACK A");
        printf("\n 4. POP from STACK B");
        printf("\n 5. DISPLAY STACK A");
        printf("\n 6. DISPLAY STACK B");
        printf("\n 7. EXIT");
        printf("\n Enter your option: ");
        scanf("%d", &option);
        switch(option){
            case 1:
                printf("\n Enter the number to be pushed into the stack A: ");
                scanf("%d", &val);
                pushA(val);
                break;
            case 2:
                printf("\n Enter the number to be pushed into the stack B: ");
                scanf("%d", &val);
                pushA(val);
                break;
            case 3:
                val = popA();
                if(val != -999)
                printf("\n The value stored at the top the stack A: %d", val);
                break;

            case 4:
                val = popB();
                if(val != -999)
                printf("\n The value stored at the top the stack B: %d", val);
                break;
            case 5:
                printf("\n The contents of Stack A are: \n");
                display_stackA();
                break;
            case 6:
                printf("\n The contents of Stack B are: \n");
                display_stackB();
                break;
        }

    }while(option != 7);
}