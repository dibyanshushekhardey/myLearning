def findpos(l, v):
    # Loop can have an else clause
    for i in range(len(l)):
        if l[i] == v: # Exit, report position
            pos = i
            break
    # If pos not reset in loop, pos is -1
    else:
        pos = -1
    return pos