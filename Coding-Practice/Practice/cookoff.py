t = int(input())

for _ in range(t):
    n = int(input())
    l = []
    for i in range(n):
        l.append(input())
    a1=0
    a2=0
    a3=0
    a4=0
    a5=0
    a6=0
    a7=0

    for i in l:
        if i == "cakewalk":
            a1 += 1
    for i in l:
        if i == "simple":
            a2 += 1
    for i in l:
        if i == "easy":
            a3 += 1
    for i in l:
        if i == "easy-medium":
            a4 += 1
    for i in l:
        if i == "medium":
            a5 += 1
    for i in l:
        if i == "medium-hard":
            a6 += 1
    for i in l:
        if i == "hard":
            a7 += 1

    if ((a1 == 1) and (a2 == 1) and (a3 == 1) and ((a4==1) or (a5==1)) and ((a6==1) or (a7==1))):
        print("Yes")
    else:
        print("No")