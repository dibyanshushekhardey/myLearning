from collections import deque

q = deque()

q.append('a')
q.append('b')
q.append('c')

print("Initial queue")
print(q)

# Removing elements from the queue
print("\nElements dequeued from queue\n")
print(q.popleft())
print(q.popleft())
print(q.popleft())

print("\Queue after removing elements")
print(q)