t = int(input())

for _ in range(t):
    n = int(input())
    l1 = list(map(int, input().split()))
    l2 = [6, 13, 20, 27, 7, 14, 21, 28]
    for i in l1:
        if i not in l2:
            l2.append(i)
    print(len(l2))