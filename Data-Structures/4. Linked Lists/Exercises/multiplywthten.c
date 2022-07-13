#include <stdlib.h>
#include <stdio.h>

struct node {
    int data;
    struct node * next;
};

void push (struct node ** head_ref, int new_data){
    struct node * new_node = (struct node *)malloc(sizeof(struct node));
    new_node -> data = new_data;
    new_node -> next = (*head_ref);
    (*head_ref) = new_node;
}

void display(struct node *p){
    while(p != NULL){
        printf("%d\t", p -> data);
        p = p -> next;
    }
    printf("\n");
}

// function to multiply the list with 10
static int multiply_node(struct node * nnode, int mult){
    int remainder;
    if(!nnode){
        remainder = 0;
    }
    else{
        nnode -> data = nnode -> data * mult + multiply_node(nnode -> next, mult);
        remainder = nnode -> data / 10;
        nnode -> data %= 10;
    }
    return remainder;
}

struct node * multiply_list(struct node * nnode, int mult){
    int remainder;
    struct nnode *ret;

    remainder = multiply_node(nnode, mult);
    if(!remainder){
        ret = nnode;
    }
    else{
        struct node * ret = (struct node *)malloc(sizeof(struct node *));
        ret -> data = remainder;
        ret -> next = nnode;
    }
    return ret;
}


int main(){
    struct node * head = NULL;
    push(&head, 1);
    push(&head, 3);
    push(&head, 1);
    push(&head, 2);
    push(&head, 1);
    push(&head, 4);
    printf("First list: ");
    display(head);
    
    struct node * result = multiply_list(head , 10);
    printf("Result is: ");

    return 0;
}