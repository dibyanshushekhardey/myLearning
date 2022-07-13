t = int(input())

for _ in range(t):
    n = int(input())
#     count = 0
#     l = [i for i in range(1, n+1)]
#     for i in range(n):
#         if l[i] % 2 == 0:
#             count += 1
#     print(n - count)  
    n += 1
    print(n >> 1)
