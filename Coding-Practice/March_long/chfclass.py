t = int(input())

for _ in range(t):
    n = int(input())
    if n < 6:
        print(0)
    elif n == 6:
        print(1)
    elif n > 6:
        print(n // 7)