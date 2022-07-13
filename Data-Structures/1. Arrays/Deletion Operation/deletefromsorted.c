#include <stdio.h>
#include <conio.h>

int main(){
    int i, n, j, num, arr[10];
    printf("\nEnter the number of elements in the array: ");
    scanf("%d", &n);
    for(i = 0; i < n; i++){
        printf("\n arr[%d] = ", i);
        scanf("%d", &arr[i]);
    }
    printf("\nEnter the number to be deleted: ");
    scanf("%d", &num);
    for(i = 0; i < n; i++){
        if(arr[i] == num){
            for(j = 0; j < n - 1; j++){
                arr[j] = arr[j + 1];
            }
        }
    }
    n = n - 1;
    printf("\n The array after deletion is: ");
    for(i = 0; i < n; i++){
        printf("\n arr[%d] = %d", i, arr[i]);
    }
    return 0;
}