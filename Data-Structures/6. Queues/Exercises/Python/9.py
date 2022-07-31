from collections import deque

def reversequeue(queue):
    stack = []
    while(queue):
        stack.append(queue[0])
        queue.popleft()
        
    while(len(stack) != 0):
        queue.append(stack[-1])
        stack.pop()

if __name__=='__main__':
    queue=deque([10, 20, 30, 40, 50, 60, 70 ,80, 90, 100])
    reversequeue(queue)
    print(queue)