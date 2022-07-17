def diagonalSum(mat):
        n = len(mat)
        m = n // 2 # get the middle of the matrix
        
        s = 0
        for i in range(n):
            s += mat[i][i]      # primary diagonal
            s += mat[n-i-1][i]  # second diagonal
        
        if n %2 == 1:
            s -= mat[m][m]      # to remove the extra middle element that is there 
                                # if the matrix is to odd x odd size
        return s

if __name__=='__main__':
    mat = [[1,2,3],
              [4,5,6],
              [7,8,9]]
    print(diagonalSum(mat))
