def swap(arr):
    arr.sort()
    arr[-2], arr[1] = arr[1], arr[-2]
    print(arr)

if __name__=='__main__':
    arr = [1, 3, 4, 5]
    swap(arr)