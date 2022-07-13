# A first-year student, came to your college. Being a good senior, you must tell him if it is possible to go from College Main Gate to Hostel for him.
# The college can be visualized on a 2D-plane. Suppose the College Main Gate is situated at origin i.e. at the coordinates (0,0) and the Hostel is situated at the coordinates (x,y).
# As the first-year student wants to explore the college campus further, in one move, he will increase or decrease any coordinate (either the x-coordinate or the y-coordinate) by a value of exactly K.
# Is it possible for the first-year student to reach the Hostel?

t = int(input())
for _ in range(t):
    x, y, k = map(int, input().split())
    if x%k == 0 and y %k == 0:
        print("YES")
    else:
        print("NO")