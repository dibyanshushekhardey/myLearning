#include <stdio.h>
int main(){
  int i, j, arr[10];
  printf("\nEnter 10 elements in the array:\n");
  for (i = 0; i<=9; i++){
    scanf("%d", &arr[i]);
  }
  for (i = 0; i <=9; i++){
    if (arr[i] == arr[10 - (i + 1)]){
      printf("%d\n", arr[i]);
    }
  }
  return 0;
}
