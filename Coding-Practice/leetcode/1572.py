# Given a square matrix mat, return the sum of the matrix diagonals.
# Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.

class Solution:
    def diagonalSum(self, mat: List[List[int]]) -> int:
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
