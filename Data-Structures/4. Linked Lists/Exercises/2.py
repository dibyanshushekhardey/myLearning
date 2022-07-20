class Node:
    def __init__(self, data):
        self.data=data
        self.next=None

class LinkedList:
    # inititalising head
    def __init__(self):
        self.head=None
    
    # count number of occurences of a node
    # serach for in a linked list
    def count(self, search_for):
        current = self.head
        count = 0
        while current is not None:
            if current.data == search_for:
                count += 1
            current = current.next
        return count
    
    # function to insert a new node
    # at the beginning
    def push(self, new_data):
        new_node = Node(new_data)
        new_node.next=self.head
        self.head=new_node

    # utility function to print the linked
    # linkedlist
    def printList(self):
        temp=self.head
        while temp:
            print(temp.data)
            temp=temp.next

# drive program
llist=LinkedList()
llist.push(1)
llist.push(3)
llist.push(1)
llist.push(2)
llist.push(1)

print("count of 1 is % d"%(llist.count(1)))