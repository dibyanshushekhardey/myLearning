def upperSum(arr):
    s = 0
    for i in range(0, len(arr)):
        for j in range(0, len(arr)):
            if i > j:
                s += arr[i][j]
    return s

mat = [[1, 0, 0], [2, 3, 0], [4, 5, 6]]
print(upperSum(mat))