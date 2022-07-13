t = int(input())

for _ in range(t):
    a, b, c, d, e = map(int, input().split())
    if a + b <= d and c <= e:
        print("YES")
    elif a + c <= d and b <= e:
        print("YES")
    elif b + c <= d and a <= e:
        print("YES")
    else:
        print("NO")