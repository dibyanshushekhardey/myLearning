# “You won’t get caught if you hide behind someone.”
# Sang-Woo advises Gi-Hun to hide behind someone to avoid getting shot.
# Gi-Hun follows Sang-Woo's advice and hides behind Ali, who saved his life earlier. Gi-Hun and Ali both have the same height, K. Many players saw this trick and also started hiding behind Ali.
# Now, there are N players standing between Gi-Hun and Ali in a straight line, with the ith player having height Hi. Gi-Hun wants to know the minimum number of players who need to get shot so that Ali is visible in his line of sight

from itertools import count


t = int(input())
for _ in range(t):
    n, k = map(int, input().split())
    l1 = list(map(int, input().split()))

    l2 = [i for i in l1 if i > k]
    print(len(l2))
