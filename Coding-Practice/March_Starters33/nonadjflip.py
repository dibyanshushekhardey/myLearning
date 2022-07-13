# t = int(input())

# for _ in range(t):
#     n = int(input())
#     l = list(input())
#     c1 = 0
#     c2 = 0
#     for i in range(0, n):
#         if l[i] == '1':
#             c2 += 1
#             if l[i] == l[i+1]:
#                 c1 += 1
    
#     if c2 == 0:
#         print(0)
#     else:
#         if c1 == 0:
#             print(1)
#         else:
#             print(2)
#     #print(l)

def main():
    t = int(input())
#C++ TO PYTHON CONVERTER WARNING: An assignment within expression was extracted from the following statement:
#ORIGINAL LINE: while(t--)
    while (t) != 0:
        t -= 1
        n = input()
        #st = None
        st  = list(input())
        c1 = 0
        c2 = 0
        for i in range(0, n):
            if st[i]=='1':
                c2 += 1
                if st[i] == st[i+1]:
                    c1 += 1

        if c2 == 0:
            print(0, end = '')
            print("\n", end = '')
        else:
            if c1 == 0:
                print(1, end = '')
                print("\n", end = '')
            else:
                print(2, end = '')
                print("\n", end = '')
    t -= 1

if __name__ == "__main__":
    main()
