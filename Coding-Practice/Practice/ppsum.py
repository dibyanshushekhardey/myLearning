for _ in range(int(input())):
    a, b = map(int, input().split())
    for i in range(0, a):
        b = (b *(b +1)) // 2
    print(b)