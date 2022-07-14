//selection sort
#include <stdio.h>
int main() {
  /* code */
  int a[25], i, j, t;
  printf("\nEnter 25 elements in the array: ");
  for ( i = 0; i <= 24; i++){
      scanf("%d", &a[i]);
  }
  for (i = 0; i <= 23; i++){ //number of passes
    for ( j = i + 1; j <= 24; j++ ){ //start of iteration
      if (a[i] > a[j]){   //if 1st element is greater than 2nd element
        t = a[i];
        a[i] = a[j];
        a[j] = t;
      }
    }
  }
  printf("\nThe sorted numbers are:");
  for (i = 0; i <= 24; i++){
    printf("%d\n", a[i]);   //printing the sorted array
  }
  return 0;
}
