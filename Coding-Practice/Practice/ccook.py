for _ in range(int(input())):
    l = list(map(int, input().split()))
    total = sum(l)
    if total == 0:
        print("Beginner")
    elif total == 1:
        print("Junior Developer")
    elif total == 2:
        print("Middle Developer")
    elif total == 3:
        print("Senior Developer")
    elif total == 4:
        print("Hacker")
    elif total == 5:
        print("Jeff Dean")