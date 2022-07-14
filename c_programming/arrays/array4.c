#include <stdio.h>
int main(){
  int num[25], i, j, neg = 0, pos = 0, odd = 0, even = 0;
  printf("\nenter thge 25 elements of the array:");
  for (i = 0; i <= 24; i++){
    scanf("%d", &num[i]);
  }
  for ( i = 0; i <= 24; i++){
    if (num[i] < 0){
      neg++;
    }
    else{ pos++; }
    if (num[i] % 2 == 0){
      even++;
    }
    else{
      od++;
    }
  }
  printf("Negative elements = %d\n", neg);
  printf("Positive elements = %d\n", pos);
  printf("Even elements = %d\n", even);
  printf("Odd elements = %d\n", odd);

  return 0;
}
