# my solution
n = int(input())
l=[]
for i in range(0, n+1):
    if i % 2 != 0:
        l.append(i)
print(l)


# instructor's solution
max = int(input("Enter max number: "))

odd_numbers = []

for i in range(1, max):
    if i % 2 == 1:
        odd_numbers.append(i)

print("Odd numbers: ", odd_numbers)
