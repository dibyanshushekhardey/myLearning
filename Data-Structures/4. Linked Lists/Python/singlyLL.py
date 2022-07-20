class Node(object):
    def __init__(self, data):
        self.data=data
        self.next=None

# class to create a linked list
class LinkedList(object):
    def __init__(self, head=None):
        self.head=head
    
    # search an element and print its index
    def search(self, head, data, index):
        if head.data==data:
            print(index)
        else:
            # make recursive calls
            if head.next:
                return self.search(head.next, data, index+1)
            else:
                raise ValueError("Node not in lknked list")
    # defining a fumction to print the linked list
    def print_list(self):
        if self.head==None:
            raise ValueError("List is empty")
        current = self.head
        while(current):
            print(current.data, end=" ")
            current=current.next
        print("\n")
    
    # find length of linked list
    def size(self):
        if self.head == None:
            return 0
        size=0
        current=self.head
        while(current):
            size += 1
            current = current.next
        return size

    # insert a node in linked list
    def insert(self, data):
        node = Node(data)
        if not self.head:
            self.head=node
        else:
            node.next=self.head
            self.head=node
    
    # defining a function to delete a node in linked list
    def delete(self, data):
        if not self.head:
            return 
        temp = self.head
        # check if the head node is to be deleted
        if head.data == data:
            head = temp.next
            print("deleted node is " + str(head.data))
            return
        while(temp.next):
            if temp.next.data == data:
                print("Node deleted is "+str(temp,next.data))
                temp.next=temp.next.next
                return
            temp=temp.next
        print("Node is not found")
        return
        
