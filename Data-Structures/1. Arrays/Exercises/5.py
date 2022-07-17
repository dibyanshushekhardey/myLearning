def sumAll(x):
    sum = 0
    for i in range(len(x)):
        for j in range(len(x[0])):
            sum += x[i][j]
    return sum

def avg(arr):
    l = []
    for i in range(len(arr)):
        l.append(sum(arr[i])/len(arr))
    return sum(l)/len(arr)

if __name__=="__main__":
    a = [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]
    print(sumAll(a))
    print(avg(a))
