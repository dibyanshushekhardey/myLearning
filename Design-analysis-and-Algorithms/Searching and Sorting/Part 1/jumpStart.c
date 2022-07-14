#include <stdio.h>
#include <math.h>

int jumpSearch(int arr[], int x, int n)
{
    int step = sqrt(n);javascript:void(0)
    int prev = 0;
    while(arr[fmin(step, n)- 1] < x)
    {
        prev = step;
        step += sqrt(n);
        if(prev >= n)
        return -1;
    }
    while(arr[prev] < x)
    {
        prev++;
        if(prev == (fmin(step, n)))
        {
            return prev;
            
        }
        
        return -1;
    }
}

int main()
{
    int arr[] = { 0, 1, 1, 2, 3, 5, 8, 13, 21,
                34, 55, 89, 144, 233, 377, 610 };
    int x = 55;
    int n = sizeof(arr) / sizeof(arr[0]);
     
    // Find the index of 'x' using Jump Search
    int index = jumpSearch(arr, x, n);
 
    // Print the index where 'x' is located
    printf("\nNumber %d is at index ", index);
    return 0;
}
