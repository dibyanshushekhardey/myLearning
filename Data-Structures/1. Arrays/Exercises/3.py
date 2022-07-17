def swap(arr):
    if len(arr) < 4:
        print("No swapping needed")
    else:
        arr[1], arr[-2] = arr[-2], arr[1]
        print(arr)

if __name__=="__main__":
    arr = [1,2,3,4]
    swap(arr)