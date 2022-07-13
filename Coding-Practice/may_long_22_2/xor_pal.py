# for _ in range(int(input())):
#     n=int(input())
#     s=input()
#     count = 0
#     for i in range(0, n//2):
#         if s[i] == s[n-1-i]:
#             count+=1
#     result=0
#     if count % 2 == 0:
#         result=count/2
#     else:
#         result=(count/2)+1
#     print(int(result))
import math

def main():

    c = int(input())
    for _ in range(c):
        n = int(input())
        co = 0
        s = input()
        i = 0
        while i < math.trunc(n / float(2)):
            if s[i]!=s[n-1-i]:
                co+=1
            i += 1
        ans = None
        if math.fmod(co, 2)==0:
            ans = math.trunc(co / float(2))
        else:
            ans = math.trunc(co / float(2))+1
        print(ans, end = '')
        print("\n", end = '')

    c -= 1

if __name__ == "__main__":
    main()
