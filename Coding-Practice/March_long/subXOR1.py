import math

def main():
    t = int(input())
#C++ TO PYTHON CONVERTER WARNING: An assignment within expression was extracted from the following statement:
#ORIGINAL LINE: while(t--)
    while (t) != 0:
        t -= 1
        n = int(input())
        s = input()

        a = [0 for _ in range(n)]
        c = 1
        solution = 0

        if s[0] == '1':
            a[0] = 1

        arr = a[0]

        for i in range(1, n):
            if s[i] == '1':
                arr+=(i+1)
            a[i] = arr
            a[i] = math.fmod(a[i], 2)

        for i in range(n-1, -1, -1):
            if a[i] == 1:
                solution += c
                solution = math.fmod(solution, Globals.mod)
            c = c * 2
            c = math.fmod(c, Globals.mod)
        print(int(math.fmod(solution, Globals.mod)), end = '')
        print("\n", end = '')
    t -= 1

class Globals:
    #C++ TO PYTHON CONVERTER NOTE: The following #define macro was replaced in-line:
    #ORIGINAL LINE: #define ll long long
    #C++ TO PYTHON CONVERTER NOTE: The following #define macro was replaced in-line:
    #ORIGINAL LINE: #define input() int t; cin>>t; while(t--)
    mod = 998244353

if __name__ == "__main__":
    main()
