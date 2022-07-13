n, h, x = map(int, input().split())

l = list(map(int, input().split()))
t=True
for i in l:
    if x+i>=h:
        t=True
        break
    else:
        t=False
if t:
    print("YES")
else:
    print("NO")