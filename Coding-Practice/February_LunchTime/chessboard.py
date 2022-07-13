t = int(input())
for _ in range(t):
    l = list(map(int, input().split()))
    d = max(abs(l[0]-l[2]), abs(l[1]-l[3]))
    print(d)