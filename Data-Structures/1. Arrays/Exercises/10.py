def nonZero(arr):
    m = len(arr)
    n = len(arr[0])

    total = 0
    for i in range(m):
        for j in range(n):
            if arr[i][j] > 0:
                total += 1
    return total

if __name__=='__main__':
    X = [[12,7,3],
    [4 ,5,6],
    [7 ,8,9]]
    print(nonZero(X))