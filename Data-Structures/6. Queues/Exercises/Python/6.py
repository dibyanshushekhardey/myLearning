# deque implementation in python
class PriorityQueue:
    def __init__(self):
        self.items = []
    def isEmpty(self):
        return self.items == []
    def insert(self, data):
        self.items.append(data)
    def delete(self):
        try:
            max_val = 0
            for i in range(len(self.items)):
                if self.items[i] > self.items[max_val]:
                    max_val = i
            item = self.items[max_val]
            del self.items[max_val]
            return item
        except IndexError:
            print()
            exit()
        
if __name__ == '__main__':
    myQueue = PriorityQueue()
    myQueue.insert(12)
    myQueue.insert(1)
    myQueue.insert(14)
    myQueue.insert(7)
    print(myQueue)           
    while not myQueue.isEmpty():
        print(myQueue.delete())

