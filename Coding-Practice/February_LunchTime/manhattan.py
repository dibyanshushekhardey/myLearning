d = int(input())

for i in range(0, 5):
    for j in range(i+1, 5):
        sum = abs(i - j) + abs(i - j)
        if sum == d and i < j:
            print(i, j)
       