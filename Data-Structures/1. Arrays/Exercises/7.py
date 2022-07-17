def diagnalSum(arr):
    m = len(arr)
    n = m // 2
    s = 0
    for i in range(m):
        s += arr[i][i]

    return s

if __name__=='__main__':
    mat = [[1,2,3],
        [4,5,6],
        [7,8,9]]
    print(diagnalSum(mat))