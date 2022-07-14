//selection sort
#include <stdio.h>
int main() {
  /* code */
  int a[25], i, j, t;
  printf("\nEnter 25 elements in the array: ");
  for ( i = 0; i <= 24; i++){
      scanf("%d", &a[i]);
  }
  for (i = 1; i <= 24; i++){ //number of passes
    t = a[i];
    for ( j = 0; j < i; j++ ){ //start of iteration
      if (t < a[j]){   //if 1st element is greater than 2nd element
        for ( k = i; k >= j; k--){
          a[k] = a[k - 1];
        }
        a[j] = t;
        break;
      }
    }
  }
  printf("\nThe sorted numbers are:");
  for (i = 0; i <= 24; i++){
    printf("%d\n", a[i]);   //printing the sorted array
  }
  return 0;
}
