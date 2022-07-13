# cook your dish here
for _ in range(int(input())):
    n=int(input())
    l=list(map(int, input().split()))
    count=0
    for i in l:
        if i >= 1000:
            count += 1
    print(count)
