t = int(input())

for _ in range(t):
    x = int(input())
    ans = x % 4
    if ans == 1:
        print("East")
    elif ans == 2:
        print("South")
    elif ans == 3:
        print("West")
    if ans == 0:
        print("North")