def fastAppr(arr):
    p1 = max(arr)
    arr.remove(p1)
    p2 = max(arr)
    return p1 * p2


n = int(input())
arr = [int(x) for x in input().split()]
print(fastAppr(arr))