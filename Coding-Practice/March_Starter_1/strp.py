t = int(input())

for _ in range(t):
    n = int(input())
    l1 = input()
    #split(l1)
    i = 0
    total = 0
    while (i < n):
        if ((i+1 < n) and (l1[i] == l1[i+1])):
            total += 1
            i += 2
        else:
            total += 1
            i += 1
    print(total)
        