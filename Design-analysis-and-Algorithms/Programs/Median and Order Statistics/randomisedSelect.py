import random

def partitionRand(arr, low, high):
    randpivot = random.randrange(low, high)
    # Swapping the starting array element of the array and the pivot
    arr[low], arr[randpivot] = arr[randpivot], arr[low]
    return partition(arr, low, high)

def partition(arr, low, high):
    i = (low-1)         # index of smaller element
    pivot = arr[high]     # pivot
  
    for j in range(low, high):
  
        # If current element is smaller than or
        # equal to pivot
        if arr[j] <= pivot:
  
            # increment index of smaller element
            i = i+1
            arr[i], arr[j] = arr[j], arr[i]
  
    arr[i+1], arr[high] = arr[high], arr[i+1]
    return (i+1)

def randomisedSelect(arr, p, r, i):
    if p == r:
        return arr[p]
    q = partitionRand(arr, p, r)
    k = q - p + 1
    if i == k:
        return arr[q]
    
    elif i < k:
        return randomisedSelect(arr, p, q - 1, i)
    else:
        return randomisedSelect(arr, q + 1, r, i - k)

if __name__ == "__main__":
    arr = [10, 7, 8, 9, 1, 5]
    n = len(arr)
    randomisedSelect(arr, 0, n-1, 4)
    print("Sorted array is:")
    for i in range(n):
        print("%d" % arr[i]),

