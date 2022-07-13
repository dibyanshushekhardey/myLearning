from msilib.schema import Binary
from unittest import result


def BinarySearch(A, low, high, key):
    if high < low:
        return low - 1
    mid = low + ((high - low) // 2) 
    if key == A[mid]:
        return mid
    elif key < A[mid]:
        return BinarySearch(A, low, mid - 1, key)
    else:
        return BinarySearch(A, mid+1, high, key)

arr = [3, 5, 8, 10, 12, 15, 18, 20, 20, 50, 60]
low = 1
high = 11
key = 50

index = BinarySearch(arr, low, high, key)
if index != -1:
    print ("Element", key,"is present at index %d" %(index))
else:
    print ("Element %d is not present" %(key))