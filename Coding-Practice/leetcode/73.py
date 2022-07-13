# Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.
# You must do it in place.

class Solution:
    def setZeroes(self, matrix: List[List[int]]) -> None:
        """
        Do not return anything, modify matrix in-place instead.
        """
        R = len(matrix)
        C = len(matrix[0])
        
        row, col = set(), set()
            
        for i in range(0, R):
            for j in range(0, C):
                if matrix[i][j] == 0:
                    row.add(i)
                    col.add(j)
                    
        for i in range(0, R):
            for j in range(0, C):
                if i in row or j in col:
                    matrix[i][j] = 0
