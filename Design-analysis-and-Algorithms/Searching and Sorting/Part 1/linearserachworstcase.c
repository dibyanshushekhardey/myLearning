#include <stdio.h>

void search(int arr[], int searchElement)
{
  int left = 0;
  int length = sizeof(arr);
  int pos = -1;
  int right = length - 1;
  for(left = 0; left <= right;left++)
  {
    if(arr[left] == searchElement)
    {
      pos = left;
      printf("\nElement found in the array at %d pos with %d attempt", pos + 1, left + 1);
      break;
    }
    if(arr[right] == searchElement)
    {
      pos = right;
      printf("\nElement found in the array at %d pos with %d attempt", pos + 1, length - right);
      break;
    }
    
    right--;
  }
  if  (pos == -1)
    printf("\n Not found in array with %d attempt", left);
}

int main()
{
  int arr[] = {1, 2, 3, 4, 5};
  int searchElement = 5;
  search(arr, searchElement);
  return 0;
}
