t = int(input())

def largestPow(n):
    p = 1
    while (p * 2 <= n):
        p *= 2
    return p

for _ in range(t):
    n = int(input())
    lp = largestPow(n)
    seclp = lp // 2
    ans1 = n - lp + 1
    ans2 = lp - seclp
    print(max(ans1, ans2))