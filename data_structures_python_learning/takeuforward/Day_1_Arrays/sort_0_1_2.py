def printArr(arr, n):
    for i in range(n):
        print(arr[i], end=" ")

def sortArr(arr, n):
    count0 = 0
    count1 = 0
    count2 = 0

    for i in range(n):
        if arr[i] == 0:
            count0 += 1
        elif arr[i] == 1:
            count1 += 1
        elif arr[i] == 2:
            count2 += 1
    
    # update the array 
    i = 0

    while (count0 > 0):
        arr[i] = 0
        i+=1
        count0 -= 1
    
    while (count1 > 0):
        arr[i] = 1
        i+=1
        count1 -= 1

    while (count2 > 0):
        arr[i] = 2 
        i+=1
        count2 -= 1

    printArr(arr, n)

arr= [0, 1, 1, 0, 1, 2, 1, 2, 0, 0, 0, 1]
n = len(arr) 
sortArr(arr, n)