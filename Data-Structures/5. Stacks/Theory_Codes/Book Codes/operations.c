#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#define MAX 3

int st[MAX], top = -1;

//push operation
void push(int st[], int val){
    if(top == MAX - 1){
        printf("\nStack Overflow");
    }

    else{
        top++;
        st[top]= val;
    }
}

// pop operation
int pop(int st[]){
    int val;
    if(top == -1){
        printf("\nStack Underflow");
        return -1;
    }
    else{
        val = st[top];
        top--;
        return val;
    }
}

// display the element
void display(int st[]){
    int i;
    if(top == -1){
        printf("\n Stack is Empty");
    }
    else{
        for(i = top; i>=0; i--)
        printf("\n %d", st[i]);
        printf("\n");
    }
}

// peek operation
int peek(int st[]){
    if(top == -1){
        printf("\n Stack is empty");
        return -1;
    }
    else{
        return (st[top]);
    }
}

// main function
int main(int argc, char *argv[]){
    int val, option;
    do{
        printf("\n *****MAIN MENU*****");
        printf("\n 1. PUSH");
        printf("\n 2. POP");
        printf("\n 3. PEEK");
        printf("\n 4. DISPLAY");
        printf("\n 5. EXIT");
        printf("\n Enter your option: ");
        scanf("%d", &option);
        switch(option){
            case 1:
                printf("\n Enter the number to be pushed into the stack: ");
                scanf("%d", &val);
                push(st, val);
                break;
            case 2:
                val = pop(st);
                if(val != -1)
                printf("\n The value deleted from the stack: %d", val);
                break;
            case 3:
                val = peek(st);
                if(val != -1)
                printf("\n The value stored at the top the stack: %d", val);
                break;

            case 4:
                display(st);
                break;
        }

    }while(option != 5);
    return 0;
}