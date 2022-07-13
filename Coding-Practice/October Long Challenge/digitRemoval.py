t = int(input())


def countDigit(a, b):
    count = 0
    x = [int(i) for i in str(a)]
    print(x)
    '''
    if b in x:
        a += 1
        count += 1
        countDigit(a, b)
    else:
        print(str(count))
    
    '''
        
for _ in range(t):
    a, b = list(map(int, input().split()))
    x = [int(i) for i in str(a)]
    if b not in x:
        print("0")
    else:
        countDigit(a, b)