t = int(input())

for i in range(t):
    a, b, c, d = list(map(int, input().split()))
    if a + b + c <= d:
        print("1")
    elif a + b <= d:
        print("2")
    else:
        print("3")