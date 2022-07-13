for _ in range(int(input())):
    x = int(input())
    a = 0.1 * x
    b = 100
    if a >= b:
        print(int(a))
    else:
        print(b)