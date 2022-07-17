def squareSum(arr):
    l = []
    total = 0
    for i in range(0, len(arr)):
        l.append(arr[i]**2)
    total = sum(l)
    print(total)

if __name__=="__main__":
    arr = [1, -1, 2, 4]
    squareSum(arr)