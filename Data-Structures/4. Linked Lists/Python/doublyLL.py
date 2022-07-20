class Node:
    def __init__(self, val):
        self.value=val
        self.next=None
        self.prev=None

class DoublyList:
    def __init__(self, val):
        self.head=Node(val)
        self.tail=self.head
    
    def addNodeLast(self, val):
        current = self.head
        while current.next != None:
            current = current.next
        newNode=Node(val)
        current.next=newNode
        newNode.prev=current
        self.tail=newNode

    def insertNode(self, val, newVal):
        if self.tail.value==val:
            self.addNodeLast(newVal)
        elif self.head.value==val:
            newNode=Node(newVal)
            newNode.next = self.head.next
            newNode.prev = self.head
            newNode.next.prev = newNode
            self.head.next = newNode
        else:
            current = self.head.next
            while current.value != val:
                current = current.next
            newNode = Node(newVal)
            newNode.next = current.next
            newNode.next.prev = newNode 
            newNode.prev = current
            current.next = newNode

    def removeNode(self, val):
        if self.head.value == val:
            self.head = self.head.next
            self.head.prev = None
        elif self.tail.value == val:
            self.tail = self.tail.prev
            self.tail.next = None
        else:
            current = self.head.next
            while current.value != val:
                current = current.next
            current.prev.next = current.next
            current.next.prev = current.prev

    def showReverse(self):
        current = self.tail
        while current != None:
            print(current.value)
            current = current.prev

    def show(self):
        current = self.head
        while current != None:
            print(current.value)
            current = current.next

class doublyLinkedList:
    d1=DoublyList()
    #pass
    d1.insertNode(1)
    d1.insertNode(2)
    d1.insertNode(3)
    d1.insertNode(4)
    d1.show()