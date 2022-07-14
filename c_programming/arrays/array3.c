#include <stdio.h>
int main(){
  int num[100], i, j, k, step;

  for (i = 0; i <= 99; i++){
    num[i] = i + 1;
  }
  for (i = 1; i <= 99; i++){
    if (num[i] != 0){
      k = num[i] * 2 - 1;
      step = num[i];
      for (j = k; j <= 99; j = j + step){
        num[j] = 0;
      }
    }
  }
  printf("\nPrime numbers between 1 and 100 are:\n");
  for (i = 0; i <= 99; i++){
    if (num[i] != 0){
      printf("%d\n", num[i]);
    }
  }
  return 0;
}
