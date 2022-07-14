#include <stdio.h>
int main() {
  int n, num[25], count = 0, i;
  printf("\nEnter 25 elements in the array: \n");
  for (i = 0; i <=24; i++){
    scanf("%d", &num[i]); //array elements
  }
  printf("\nEnter the search element: ");
  scanf("%d", &n);

  for (i = 0; i <= 24; i++){
    if (num[i] == n){
      count ++;
    }
  }
  printf("\nNumber %d is found %d times in the given array\n", n, count);
  return 0;
}
