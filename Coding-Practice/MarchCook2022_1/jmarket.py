t = int(input())

for _ in range(t):
    x, a, b, c = map(int, input().split())
    l1 = []
    l1.append(a)
    l1.append(b)
    l1.append(c)
    l1.sort()
    total = 0
    total += ((x - 1) * l1[0]) + l1[1] 
    print(total)