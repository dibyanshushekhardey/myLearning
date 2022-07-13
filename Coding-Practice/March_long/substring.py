t = int(input())

for _ in range(t):
    s = input()
    total = 0
    initial = 0
    n = len(s)
    r = 0
    #print(n)
    for i in range(n):
        if s[i] != s[0] and s[i] != s[n-1]:
            total += 1
        else:
            total += 0
        initial = max(initial, total)
    if initial == 0:
        print(-1)
    else:
        print(initial)