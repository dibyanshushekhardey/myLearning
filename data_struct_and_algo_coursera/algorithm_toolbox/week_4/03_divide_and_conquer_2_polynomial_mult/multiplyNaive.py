def MultPoly(A, B, m, n):
    product = [0] * (m + n - 1)
    for i in range(m):
        for j in range(n):
            product[i+j] += A[i] * B[j]
    
    return product

def printPoly(poly, n):
    for i in range(n):
        print(poly[i], end="")
        if(i != 0):
            print("x^", i, end="")
        if (i != n - 1):
            print(" + ", end="")

A = [5, 0, 10, 6];
 
# The following array represents
# polynomial 1 + 2x + 4x^2
B = [1, 2, 4];
m = len(A);
n = len(B);
 
print("First polynomial is ")
printPoly(A, m)
print("\nSecond polynomial is ")
printPoly(B, n)
 
prod = MultPoly(A, B, m, n)
 
print("\nProduct polynomial is ")
printPoly(prod, m+n-1)