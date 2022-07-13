t = int(input())

for _ in range(t):
    x, y, a, b , k = map(int, input().split())
    petrol = x + a * k
    diesel = y + b * k 
    if petrol > diesel:
        print("DIESEL")
    elif petrol < diesel:
        print("PETROL")
    else:
        print("SAME PRICE")