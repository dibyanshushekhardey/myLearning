t = int(input())

for _ in range(t):
    a, b, c, d = map(int, input().split())
    if (a == b and c == d) or (a == d and c == b) or  (a == c and b == d):
        print("YES")
    else:
        print("NO")