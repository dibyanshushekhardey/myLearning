t = int(input())

for _ in range(t):
    d, l, r = map(int, input().split())
    if d >= l and d <= r:
        print("Take second dose now")
    elif d >= r:
        print("Too Late")
    else:
        print("Too Early")