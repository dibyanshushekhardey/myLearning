class Node:
    def __init__(self, data):
        self.data=data
        self.next=None

class CreateList:
    # declaring head and tail pointer as null
    def __init__(self):
        self.head=Node(None)
        self.tail=Node(None)
        self.head.next=self.tail
        self.tail.next=self.head
    
    # the given function will add new node at the 
    # end of the list
    def add(self, data):
        newnode = Node(data)
        # check if the list is empty
        if self.head.data is None:
            # if the list is empty, both head and tail
            # would point to new node
            self.head=newnode
            self.tail=newnode
            newnode.next=self.head
        else:
            # tail will point to new node
            self.tail.next=newnode
            # new node will become new tail
            self.tail=newnode
            # since it is circular LL tail will point to head
            self.tail.next=self.head
    
    # defining all nides in the list
    def display(self):
        current=self.head
        if self.head is None:
            print("List is empty")
            return
        else:
            print("Nodes of the circular linked list")
            # print each node by incrementing pointer
            print(current.data)
            while(current.next != self.head):
                current=current.next
                print(current.data)


class CircularLinkedList:
    cl=CreateList()
    # adds data to list
    cl.add(1)
    cl.add(2)
    cl.add(3)
    cl.add(4)
    # display all the nodes present in the list
    cl.display()