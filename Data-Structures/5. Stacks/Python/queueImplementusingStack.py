# class Queue:
#     def __init__(self):
#         self.s1 = []
#         self.s2 = []
 
#     def enQueue(self, x):
         
#         # Move all elements from s1 to s2
#         while len(self.s1) != 0:
#             self.s2.append(self.s1[-1])
#             self.s1.pop()
 
#         # Push item into self.s1
#         self.s1.append(x)
 
#         # Push everything back to s1
#         while len(self.s2) != 0:
#             self.s1.append(self.s2[-1])
#             self.s2.pop()
 
#     # Dequeue an item from the queue
#     def deQueue(self):
         
#             # if first stack is empty
#         if len(self.s1) == 0:
#             print("Q is Empty")
     
#         # Return top of self.s1
#         x = self.s1[-1]
#         self.s1.pop()
#         return x

# class Queue:
#     def __init__(self):
#         self.s1 = []
#         self.s2 = []
 
#     def enQueue(self, x):
#         self.s1.append(x)
        
#     # Dequeue an item from the queue
#     def deQueue(self):
#          # if both the stacks are empty
#         if len(self.s1) == 0 and len(self.s2) == 0:
#             print("Q is Empty")
#             return
 
#         # if s2 is empty and s1 has elements
#         elif len(self.s2) == 0 and len(self.s1) > 0:
#             while len(self.s1):
#                 temp = self.s1.pop()
#                 self.s2.append(temp)
#             return self.s2.pop()
 
#         else:
#             return self.s2.pop()

#fucntion call
class Queue:
    def __init__(self):
        self.s = []

    def enQueue(self, data):
        self.s.append(data)
    
    def deQueue(self):
        if len(self.s) <= 0:
            print("Q is empty")
            return
        
        # pop an item from stack
        x = self.s[len(self.s) - 1]
        self.s.pop()

        # if stack is empty
        if len(self.s) <= 0:
            return x
        
        item = self.deQueue()
        # push the popped item back to stack
        self.s.append(x)

        return item

# Driver code
if __name__ == '__main__':
    q = Queue()
    q.enQueue(1)
    q.enQueue(2)
    q.enQueue(3)
 
    print(q.deQueue())
    print(q.deQueue())
    print(q.deQueue())
