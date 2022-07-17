def transpose(mat, tr, n):
    for i in range(n):
        for j in range(n):
            tr[i][j]=mat[j][i]

def isSymmetric(mat, n):
    tr=[[0 for j in range(len(mat[0]))] for i in range(len(mat))]
    transpose(mat, tr, n)
    for i in range(n):
        for j in range(n):
            if mat[i][j] != tr[i][j]:
                return False
    return True

mat = [ [ 1, 3, 5 ], [ 3, 2, 4 ], [ 5, 4, 1 ] ]
if isSymmetric(mat, 3):
    print("1")
else:
    print("0")