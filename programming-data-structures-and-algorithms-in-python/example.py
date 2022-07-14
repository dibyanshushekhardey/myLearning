'''
#Program 6-1
#Program to print the difference of two input numbers
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
diff = num1 - num2
print("The difference of",num1,"and",num2,"is",diff)
'''

'''
#Program to print the positive difference of two numbers
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
if num1 > num2:
 diff = num1 - num2
else:
 diff = num2 - num1
print("The difference of",num1,"and",num2,"is",diff)
'''

'''
#Program to create a four function calculator
result = 0
val1 = float(input("Enter value 1: "))
val2 = float(input("Enter value 2: "))
op = input("Enter any one of the operator (+,-,*,/): ")
if op == "+":
    result = val1 + val2
elif op == "-":
 if val1 > val2:
    result = val1 - val2
 else:
    result = val2 - val1
elif op == "*":
    result = val1 * val2
elif op == "/":
 if val2 == 0:
    print("Error! Division by zero is not allowed. Program terminated")
 else:
    result = val1/val2
else:
    print("Wrong input,program terminated")

print("The result is ", result)
'''

'''
#Program to find larger of the two numbers
num1 = 5
num2 = 6
if num1 > num2:
    #Block1
    print("first number is larger")
    print("Bye")
else:
    #Block2
    print("second number is larger")
    print("Bye Bye")
'''

'''
#Find the factors of a number using while loop
num = int(input("Enter a number to find its factor: "))
print(1, end=' ') #1 is a factor of every number
factor = 2
while factor <= num/2 :
    if num % factor == 0:
#the optional parameter end of print function specifies the delimeter
#blank space(' ') to print next value on same line
        print(factor, end=' ')
    factor += 1
print(num, end=' ') #every number is a factor of itself
'''

'''
#Program to demonstrate the use of break statement in loop
num = 0
for num in range(10):
    num = num + 1
    if num == 8:
        break
    print('Num has value ' + str(num))
print('Encountered break!! Out of loop')
'''

'''
#Find the sum of all the positive numbers entered by the user
#till the user enters a negative number.
entry = 0
sum1 = 0
print("Enter numbers to find their sum, negative number ends the loop:")
while True:
    #int() typecasts string to integer
    entry = int(input())
    if (entry < 0):
        break
    sum1 += entry
print("Sum =", sum1)
'''

'''
#Demonstrate working of nested for loops
for var1 in range(3):
    print( "Iteration " + str(var1 + 1) + " of outer loop")
    for var2 in range(2): #nested loop
        print(var2 + 1)
    print("Out of inner loop")
print("Out of outer loop")
'''

'''
#Program to print the pattern for a number input by the user
#The output pattern to be generated is
#1
#1 2
#1 2 3
#1 2 3 4
#1 2 3 4 5
num = int(input("Enter a number to generate its pattern = "))
for i in range(1,num + 1):
    for j in range(1, i + 1):
        print(j, end = " ")
print("""""")
'''

