t = int(input())

for _ in range(t):
    n = int(input())
    if n % 5 == 0:
        if n % 10 == 0:
            print(n // 10)
        else:
            a = n // 10
            b = n - a * 10
            c = b // 5
            print(a + c)
    else:
        print(-1)