def BinarySearchIt(A, low, high, key):
    while low <= high:
        mid = low + ((high - low)//2)
        if key == A[mid]:
            return mid
        elif key < A[mid]:
            high = mid - 1
        else:
            low = mid + 1
    return low - 1


arr = [3, 5, 8, 10, 12, 15, 18, 20, 20, 50, 60]
low = 1
high = 11
key = 50

index = BinarySearchIt(arr, low, high, key)
if index != -1:
    print ("Element", key,"is present at index %d" %(index))
else:
    print ("Element %d is not present" %(key))