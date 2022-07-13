for _ in range(int(input())):
    a, b = map(int, input().split())
    if a == 0:
        print(0)
    else:
        if a % b == 0:
            print(a //b)
        else:
            print(-1)