def swap(A, i, j):
 
    temp = A[i]
    A[i] = A[j]
    A[j] = temp


#Partition using Hoare's partitioning scheme
def hoarePartition(arr, low, high):
    pivot = arr[low]
    i, j = low - 1, high + 1

    while True:
        while True:
            i = i + 1
            if arr[i] >= pivot:
                break
 
        while True:
            j = j - 1
            if arr[j] <= pivot:
                break
 
        if i >= j:
            return j

        swap(arr, i, j)


def quickSort(arr, low, high):
    if len(arr) == 1:
        return arr
    if low < high:
  
        # pi is partitioning index, arr[p] is now
        # at right place
        pi = hoarePartition(arr, low, high)
  
        # Separately sort elements before
        # partition and after partition
        quickSort(arr, low, pi)
        quickSort(arr, pi+1, high)
  

# Driver code to test above
if __name__ == "__main__":
    arr = [10, 7, 8, 9, 1, 5]
    n = len(arr)
    quickSort(arr, 0, n-1)
    print("Sorted array is:")
    for i in range(n):
        print("%d" % arr[i]),