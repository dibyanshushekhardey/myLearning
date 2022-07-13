# cook your dish here
for _ in range(int(input())):
    n, m = map(int, input().split())
    l = list(map(int, input().split()))
    b=max(l)
    print(max([i + b + (i - b ) % m for i in l]))
