def findpos(l, v):
    pos = -1
    for i in range(len(l)):
        if l[i] == v: # Exit, report position
            pos = i
            break
    # If pos not reset in loop, pos is -1
    return pos