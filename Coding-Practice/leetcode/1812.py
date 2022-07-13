# You are given coordinates, a string that represents the coordinates of a square of the chessboard. Below is a chessboard for your reference.
# Return true if the square is white, and false if the square is black.
# The coordinate will always represent a valid chessboard square. The coordinate will always have the letter first, and the number second.

class Solution:
    def squareIsWhite(self, coordinates: str) -> bool:
        A = ['a', 'c', 'e', 'g']
        B = ['b', 'd', 'f', 'h']
        l = list(coordinates)
        #print(l)
        if (l[0] in A and int(l[1]) % 2 != 0) or (l[0] in B and int(l[1]) % 2 == 0):
            return False
        if (l[0] in A and int(l[1]) % 2 == 0) or (l[0] in B and int(l[1]) % 2 != 0):
            return True
        
