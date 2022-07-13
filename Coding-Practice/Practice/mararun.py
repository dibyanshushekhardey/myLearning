for _ in range(int(input())):
    D, d, a, b, c = map(int, input().split())
    A = 10
    B = 21 
    C = 42
    d1 = D*d
    if d1 >= A and d1 < B:
        print(a)
    elif d1 >= B and d1 < C:
        print(b)
    elif d1 >= C:
        print(c)
    elif d1 < A:
        print(0)
