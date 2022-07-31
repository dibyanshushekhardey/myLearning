class Queue:
    def __init__(self):
        self.s = []
    def enqueue(self, data):
        self.s.append(data)
    def dequeue(self):
        if len(self.s) <= 0:
            print("Queue is empty")
            return
        x = self.s[len(self.s) - 1]
        self.s.pop()
        
        if len(self.s) <= 0:
            return x
        item = self.dequeue()
        self.s.append(x)
        return item
        

if __name__=='__main__':
    q=Queue()
    q.enqueue(1)
    q.enqueue(2)
    q.enqueue(3)
    
    print(q.dequeue())
    print(q.dequeue())
    print(q.dequeue())