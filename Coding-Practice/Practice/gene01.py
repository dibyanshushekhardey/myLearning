x, y = input().split()

if x == y:
    print(x)
elif x == 'R' or y == 'R':
    print('R')
elif (x == 'B' or y == 'G') or (x == 'G' or y == 'B'):
    print('B')