t = int(input())

for _ in range(t):
    x, y, m = map(int, input().split())
    rent = x * m
    purchasing = y
    if rent < purchasing:
        print("Yes")
    elif rent >= purchasing:
        print("No")