def chkpair(arr, size, x):
    for i in range(0, size-1):
        for j in range(i+1, size):
            if arr[i] + arr[j] == x:
                print(f"pair with a given sum {x} is ({arr[i]}, {arr[j]})")
                return 1
    return 0

if __name__ == "__main__":
    A = [0, -1, 2, -3, 1]
    x = -2
    size = len(A)
  
    if (chkpair(A, size, x)):
        print("Valid pair exists")
  
    else:
        print(f"No valid pair exists for {x}")