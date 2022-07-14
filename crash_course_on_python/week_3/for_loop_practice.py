#c1
def factorial(n):
    result = 1
    for x in range(2, n + 1):
        result = result * x
    return result

for n in range(10):
    print(n, factorial(n))

#c2
for i in range(1, 11):
  print(i ** 3)

#c3
n = 7
for i in range(0, 101):
    if i % n == 0:
        print(i)

#c4
def retry(operation, attempts):
  for n in range(attempts):
    if operation():
      print("Attempt " + str(n) + " succeeded")
      break
    else:
      print("Attempt " + str(n) + " failed")

retry(create_user, 3)
retry(stop_service, 5)
