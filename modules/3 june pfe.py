hrs = input("Enter Hours:")
h = float(hrs)
r = 10.50  # r is rate

if h <= 40.0:
    r1 = r
    p = h * r   # p is pay (pay  hrs * rate)
    print(p)
elif h > 40.0:
    h1 = h - 40  # if number of hours is greater than 40
    r2 = 1.5 * r  # new rate is 1.5 times the old rate
    p = (40.0 * r) + (h1 * r2)
    print(p)
