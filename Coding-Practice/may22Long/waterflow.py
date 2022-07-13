# cook your dish here

for _ in range(int(input())):
    w, x, y, z=map(int, input().split())
    total=w+y*z
    if total>x:
        print("overFlow")
    elif total==x:
        print("filled")
    else:
        print("unfilled")
