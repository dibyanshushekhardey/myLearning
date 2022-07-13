t = int(input())

for _ in range(t):
    x, y = map(int, input().split())
    if x > y:
        print("SECOND")
    elif x == y:
        print("ANY")
    elif x < y:
        print("FIRST")