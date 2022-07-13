for _ in range(int(input())):
    p, m, v = map(int, input().split())
    if p == 1:
        print(m*v)
    else:
        print((m-p+1)*v)