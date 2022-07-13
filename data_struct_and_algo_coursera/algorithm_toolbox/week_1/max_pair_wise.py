# Python 3

n = int(input())
a = [int(x) for x in input().split()]
prod = 0

for i in range(n):
    for j in range(i + 1, n):
        prod = max(prod, a[i] * a[j])

print((prod))