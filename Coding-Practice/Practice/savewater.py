t = int(input())

for _ in range(t):
    h, x, y, c = map(int, input().split())
    a = x + (y//2)
    b = h * a
    if b <= c:
        print("Yes")
    else:
        print("No")