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

int isSortedDesc(struct node *head){
    if(head == NULL){
        printf("True");
    }
    
    else{
        for( struct node *t = head; t -> next != NULL; t = t -> next){
            if(t -> data <= t -> next -> data){
                printf("False");
                break;
        }
    }
    }
    
    
}

void display(struct node *p){
    while(p != NULL){
        printf("%d\t", p -> data);
        p = p -> next;
    }
    printf("\n");
}

int main(){
    struct node * head = NULL;
    push(&head, 1);
    push(&head, 3);
    push(&head, 1);
    push(&head, 2);
    push(&head, 1);
    push(&head, 4);
    
    
    isSortedDesc(head);
    
    
    return 0;
}