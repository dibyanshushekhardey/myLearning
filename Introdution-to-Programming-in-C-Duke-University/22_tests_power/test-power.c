#include <stdio.h>
#include <stdlib.h>

unsigned power(unsigned x, unsigned y);

int main(void){
  int ans;
  ans = power(0, 0);
  if (ans != 1) { return EXIT_FAILURE;}
  ans = power(1, 0);
  if (ans != 1) { return EXIT_FAILURE;}
  ans = power(0, 3);
  if (ans != 0) {return EXIT_FAILURE;}
  ans = power(6, 2);
  if (ans != 36) {return EXIT_FAILURE;}
  ans = power(2, 4);
  if (ans != 16) {return EXIT_FAILURE;}
  ans = power(10,5);
  if (ans !=100000) {return EXIT_FAILURE;}

  return EXIT_SUCCESS;
}
