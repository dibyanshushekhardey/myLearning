t = int(input())
for i in range(t):
    n = int(input())
    m = list(map(int, input().split()))
    # if n == 1:
    #     print(m[0])
    # else:
    #     sum = 0
    #     for i in range(n):
    #         sum = sum + m[i]
    #     total = sum
    #     p1 = 0
    #     for j in m:
    #         p1 += j
    #         p2 = total - p1
    #         temp = max(p1, p2)
    #         ans = max(total, temp)
    #     print(ans)
    ans = 0
    sum = 0
    pref = 0
    for i in m:
        sum += i
    ans = sum
    for i in m:
        pref += i
        rem = sum - pref
        req_time = max(rem, pref)
        ans = min(ans, req_time)
    print(ans)
