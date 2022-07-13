t = int(input())

for _ in range(t):
    m, n = map(int, input().split())
    if m % 3 == 0:
       print((m*n) - (m//3)*n)
    elif m % 3 == 1:
       print(((m - 1)*n) - (((m - 1)//3)*n) + n)
    elif m % 3 == 2:
       print(((m - 2)*n) - (((m - 2)//3)*n) + n + n)