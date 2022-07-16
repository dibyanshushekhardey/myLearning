#  Python 3 program for
#  Reverse a linked list using stack

#  Linked list node
class LinkNode :
	def __init__(self, data) :
		self.data = data
		self.next = None
	
#  Stack node
class StackNode :
	#  Stack data
	def __init__(self, element, next) :
		self.element = element
		self.next = next
	

#  Define a custom stack
class MyStack :
	def __init__(self) :
		self.top = None
		self.size = 0
	
	#  Add node at the top of stack
	def push(self, element) :
		self.top = StackNode(element, self.top)
		self.size += 1
	
	def isEmpty(self) :
		if (self.size > 0 and self.top != None) :
			return False
		else :
			return True
		
	
	#  Remove top element of stack
	def pop(self) :
		if (self.size > 0 and self.top != None) :
			temp = self.top
			#  Change top element of stack
			self.top = temp.next
			self.size -= 1
		
	
	#  Return top element of stack
	def peek(self) :
		if (self.size == 0) :
			return None
		
		return self.top.element
	

class SingleLL :
	def __init__(self) :
		self.head = None
		self.tail = None
	
	#  Add new node at the end of linked list
	def addNode(self, value) :
		#  Create a new node
		node = LinkNode(value)
		if (self.head == None) :
			self.head = node
		else :
			self.tail.next = node
		
		self.tail = node
	
	#  Display linked list element
	def display(self) :
		if (self.head == None) :
			return
		
		temp = self.head
		#  iterating linked list elements
		while (temp != None) :
			print(temp.data , end = " → ")
			#  Visit to next node
			temp = temp.next
		
		print("NULL")
	
	def reverse(self) :
		if (self.head == None) :
			return
		
		#  Create new stack
		stack = MyStack()
		#  Get head node
		temp = self.head
		#  Set new head
		self.head = None
		#  Add all node into stack
		while (temp.next != None) :
			#  Add new node
			stack.push(temp)
			#  Visit to next node
			temp = temp.next
		
		#  Make new head
		self.head = temp
		#  Set new tail 
		self.tail = temp
		#  Reverse the nodes using stack element
		while (not stack.isEmpty()) :
			self.tail.next = stack.peek()
			#  Visit to next node
			self.tail = self.tail.next
			#  Remove last node
			stack.pop()
		
		self.tail.next = None
	

def main() :
	sll = SingleLL()
	#  Linked list
	#  10 → 20 → 30 → 40 → 50 → 60 → NULL
	sll.addNode(10)
	sll.addNode(20)
	sll.addNode(30)
	sll.addNode(40)
	sll.addNode(50)
	sll.addNode(60)
	print("Before Reverse")
	sll.display()
	#  Reverse node
	sll.reverse()
	print("After Reverse")
	sll.display()

if __name__ == "__main__": main()