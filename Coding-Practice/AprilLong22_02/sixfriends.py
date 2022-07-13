t = int(input())

for _ in range(t):
    a, b = map(int, input().split())
    x1 = a * 3
    x2 = b * 2
    if x1 >= x2:
        print(x2)
    else:
        print(x1)