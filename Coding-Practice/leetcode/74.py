# Write an efficient algorithm that searches for a value target in an m x n integer matrix matrix. This matrix has the following properties:

# Integers in each row are sorted from left to right.
# The first integer of each row is greater than the last integer of the previous row.


class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        nums= []
        for i in matrix:
            for j in i:
                nums.append(j)
        if target in nums:
            return True
        return False
