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

int count(struct node *head){
    struct node * current = head;
    int count = 0;
    while(current != NULL){
        if(current -> data != 0){
            count++;
        }
        
        current = current -> next;
    }
    return count;
}

int main(){
    struct node * head = NULL;
    push(&head, 1);
    push(&head, 3);
    push(&head, 1);
    push(&head, 2);
    push(&head, 1);
    push(&head, 4);

    printf("count of non zero elements is %d", count(head));
    return 0;
}