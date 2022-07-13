# You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points make a straight line in the XY plane.

class Solution:
    def checkStraightLine(self, coordinates: List[List[int]]) -> bool:
        # initialising the coordinates(x0, y0), (x1, y1)
        (x0, y0), (x1, y1) = coordinates[0], coordinates[1]
	
        for i in range(2, len(coordinates)):
            x, y = coordinates[i]
            if (x0 - x1) * (y1 - y) != (x1 - x) * (y0 - y1):
                return False
        return True
