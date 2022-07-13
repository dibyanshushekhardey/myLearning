t = int(input())

for _ in range(t):
    a, b = map(int, input().split())
    c = a + b
    if c < 3:
        print(1)
    elif c >= 3 and c <= 10:
        print(2)
    elif c >= 11 and c <= 60:
        print(3)
    else:
        print(4)