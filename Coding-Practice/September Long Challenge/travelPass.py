t = int(input())
for  _ in range(t):
    n, a, b = map(int, input().split())
    s = input()
    total = s.count('0') * a + s.count('1') * b
    print(total)