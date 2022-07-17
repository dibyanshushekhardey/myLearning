import numpy as np

# calculate the sum of each row
# 3 . calculating the score obtained by each student
def row(arr):
    m = len(arr)
    n = len(arr[0])
    sum = 0
    for i in range(m):
        for j in range(n):
            sum += arr[i][j]
        print("Sum of the row",i,"=",sum)
        sum = 0

# calculate the sum of each column
def column(arr):
    m = len(arr)
    n = len(arr[0])
    sum = 0
    for i in range(m):
        for j in range(n):
            sum += arr[j][i]
        print("Sum of the column",i,"=",sum)
        sum = 0

# 1. calculating the avg marks obtained in each subject
def avgCol(arr):
    m = len(arr)
    n=len(arr[0])

    sum = 0
    for i in range(m):
        for j in range(n):
            sum += arr[j][i]
        print("Avg of each subject", i, ":", sum//3)
        sum = 0

# 2. calculating the avg marks obtained by each student
def avgRow(arr):
    m = len(arr)
    n=len(arr[0])

    sum = 0
    for i in range(m):
        for j in range(n):
            sum += arr[i][j]
        print("Avg of each subject", i, ":", sum//3)
        sum = 0

if __name__=="__main__":
    arr = [[1, 2, 3], [4,5, 6], [7, 8, 9]]
    row(arr)
    column(arr)
    avgCol(arr)
    avgRow(arr)
    