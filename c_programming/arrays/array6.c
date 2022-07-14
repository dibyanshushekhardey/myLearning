#include <stdio.h>
int main(){
  int arr1[5], arr2[5], i, j;
  printf("\nEnter 5 elements in the array: ");
  for(i = 0; i <=4; i++){
    scanf("%d", &arr1[i]);
  }
  for(i = 0, j = 4; i <=4; i++, j--){
    arr2[j] = arr1[i];
  }
  printf("\nElements in reverse order:\n");
  for(i = 0; i <= 4; i++){
    printf("%d\n", arr2[i]);
  }
  return 0;
}
