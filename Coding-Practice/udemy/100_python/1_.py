def calculate(n):
    numbers = []
    for i in range(n):
        if i % 5 == 0 or i % 7 == 0:
            numbers.append(i)
    total = sum(numbers)
    return total
    
print(calculate(100))
