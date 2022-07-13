from itertools import count


t = int(input())
for _ in range(t):
    n = int(input())
    l = []
    for i in range(1, n+1):
        for j in range(1, n+1):
            for k in range(1, n+1):
                for a in range(1, n+1):
                    result = (i / j) + (k / a)
                    if isinstance(result, int):
                        l.append((i, j, k, a))
    
    print(len(l))