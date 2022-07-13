def gcd(a,b):
   if a==0:
      return b 
   elif b==0:
      return a 
   elif b>a:
      return gcd(b,a)
   else:
      return gcd(b,a%b)

t = int(input())
for i in range(t):
    n = int(input())
    for j in range(n):
        l = list(map(int, input().split()))
        
        print(l)