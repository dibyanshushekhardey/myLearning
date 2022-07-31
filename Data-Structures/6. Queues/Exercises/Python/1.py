queue=[]

queue.append('a')
queue.append('b')
queue.append('c')

print("Initial queue")
print(queue)

# Removing elements from the queue
print("\nElements dequeued from queue\n")
print(queue.pop(0))
print(queue.pop(0))
print(queue.pop(0))

print("\Queue after removing elements")
print(queue)