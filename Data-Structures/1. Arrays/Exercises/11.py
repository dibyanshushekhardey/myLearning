def nonZero(arr):
    m = len(arr)
    n = len(arr[0])

    totalOdd = 0
    totalEven = 0
    for i in range(m):
        for j in range(n):
            if arr[i][j] %2 == 0:
                totalEven += 1
            elif arr[i][j] % 2 != 0:
                totalOdd += 1 
    print("Nimber of Even Elements is: ", totalEven)
    print("Nimber of Odd Elements is: ", totalOdd)

if __name__=='__main__':
    X = [[12,7,3],
    [4 ,5,6],
    [7 ,8,9]]
    nonZero(X)