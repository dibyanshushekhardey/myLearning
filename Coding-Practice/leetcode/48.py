#You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).
#You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

class Solution:
    def rotate(self, matrix: List[List[int]]) -> None:
        """
        Do not return anything, modify matrix in-place instead.
        """
        n = len(matrix[0])
        for i in range(n//2+n%2):
            for j in range(n//2):
                t=matrix[n-1-j][i]
                matrix[n-1-j][i]=matrix[n-1-i][n-j-1]
                matrix[n-1-i][n-j-1]=matrix[j][n-1-i]
                matrix[j][n-1-i]=matrix[i][j]
                matrix[i][j]=t
