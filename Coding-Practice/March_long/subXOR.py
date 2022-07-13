from itertools import combinations
from functools import reduce
t = int(input())

def binaryToDecimal(n):
    return int(n,2)

for _ in range(t):
    n = int(input())
    s = input()
    M = []

    res = [s[x:y] for x, y in combinations(
            range(len(s) + 1), r = 2)]
    res = [i for i in res]
    # print(res)
    for i in res:
        M.append(binaryToDecimal(i))
    print(M)
    new = (reduce(lambda x, y: x ^ y, M))
    
    print(new)
    