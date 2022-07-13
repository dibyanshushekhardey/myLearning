# Chef is a very lazy person. 
# Whatever work is supposed to be finished in x units of time, he finishes it in m∗x units of time. 
# But there is always a limit to laziness, so he delays the work by at max d units of time. 
# Given x,m,d, find the maximum time taken by Chef to complete the work.

from re import M


t = int(input())

for _ in range(t):
    x, m, d = map(int, input().split())
    total = x * m
    upBound = x + d
    print(min(total, upBound))