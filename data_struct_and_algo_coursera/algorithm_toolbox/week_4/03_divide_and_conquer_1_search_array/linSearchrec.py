def LinearSearch(A, low, high, key):
    if high < low:
        return -1
    elif A[low] == key:
        return low
    return LinearSearch(A, low+1, high, key)

arr = [12, 34, 54, 2, 3]
n = len(arr)
x = 3
index = LinearSearch(arr, 0, n-1, x)
if index != -1:
    print ("Element", x,"is present at index %d" %(index))
else:
    print ("Element %d is not present" %(x))