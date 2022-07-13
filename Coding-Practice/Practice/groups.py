t = int(input())

for i in range(t):
    n = input()
    # a = list(n)
    # print(a)
    l = n.split('0')
    #print(l)
    count = 0
    for i in l:
        if i != '':
            count += 1
    print(count)

# if '1' not in a:
#     print('0')
# else:

    