t = int(input())

for _ in range(t):
    a, b = map(int, input().split())
    x1 = a * 10
    x2 = b * 5
    if x1 > x2:
        print("FIRST")
    elif x1 < x2:
        print("SECOND")
    else:
        print("ANY")