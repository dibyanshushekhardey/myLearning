t = int(input())

for _ in range(t):
    x, y, a, b = map(int, input().split())
    l1 = []
    l2 = []
    l1.append(x)
    l1.append(y)
    l2.append(a)
    l2.append(b)
    count = 2
    for i in l1:
        if i in l2:
            count -= 1
    print(count)