# t = int(input())

# for _ in range(t):
#     n = int(input())
#     s = n & ~(n-1)
#     if (n & 1) != 0 or n == s:
#         print(-1)
#     else:
#         print((s//2) + " " + (n//2) + " " + ((n-s)//2))

import math

def main():
    # your code goes here
    t = int(input())
#C++ TO PYTHON CONVERTER WARNING: An assignment within expression was extracted from the following statement:
#ORIGINAL LINE: while(t--)
    while (t) != 0:
        t -= 1
        n = int(input())
        a = n & ~(n-1)
        if (n &1) != 0 or n == a:
            print(-1, end = '')
            print("\n", end = '')
        else:
            print(math.trunc(a // float(2)), end = '')
            print(" ", end = '')
            print(math.trunc(n // float(2)), end = '')
            print(" ", end = '')
            print(math.trunc((n-a) // float(2)), end = '')
            print("\n", end = '')
    #t -= 1

if __name__ == "__main__":
    main()
