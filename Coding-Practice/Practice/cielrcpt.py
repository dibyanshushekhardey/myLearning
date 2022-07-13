from sklearn.metrics import jaccard_score


t = int(input())

for _ in range(t):
    p = int(input())
    total = 0
    for i in range(11, -1, -1):
        corrPow = 2**i
        while(p >= corrPow):
            p = p - corrPow
            total += 1
    print(total)