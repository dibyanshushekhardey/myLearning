n, m, k = map(int, input().split())
cout = 0
for _  in range(n):
    a = list(map(int, input().split()))
    total = sum(a[:-1])
    if total >= m and a[-1] <= 10:
        cout += 1
print(cout)