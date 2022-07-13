t = int(input())
for _ in range(t):
    x, y = map(int, input().split())
#     if x % 2 == 0 and y % 2 == 0:
#         print("Janmansh")
#     elif x % 2 == 0 and y%2 != 0:
#         print("Jay")
#     elif x % 2 != 0 and y % 2 == 0:
#         print("Jay")
#     elif x % 2 != 0 and y % 2 != 0:
#         print("Janmesh")
    for i in range(1, y+1):
        x += 1
    if x%2 == 0:
        print("Janmesh")
    else:
        print("Jay")