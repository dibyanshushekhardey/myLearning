def isUpper(arr):
    for i in range(0, len(arr)):
        for j in range(i+1, len(arr)):
            if arr[i][j] == 0 and i > j:
                return True
    return False

mat = [[1, 0, 0], [2, 5, 0], [1, 1, 1]]
if isUpper(mat):
	print("Lower Triangular Matrix")
else:
	print ("Not a Lower Triangular Matrix")