# push pop and peek operation on stacks
class Stack(object):
    def __init__(self, limit=10):
        self.stk=[]
        self.limit=limit
    def isEmpty(self):
        return len(self.stk) <= 0
    def push(self, item):
        if len(self.stk) >= self.limit:
            print("stack overflow")
        else:
            self.stk.append(item)
        print("Stack after push", self.stk)
    def pop(self):
        if len(self.stk) <= 0:
            print("Stack undeflow")
            return 0
        else:
            return self.stk.pop()
    def peek(self):
        if len(self.stk) <= 0:
            print("stack underflow")
            return 0
        else:
            return self.stk[-1]
    def size(self):
        return len(self.stk)
        
    def printStack(self):
        return self.stk
        

our_stack=Stack(5)
our_stack.push("1")
our_stack.push("2")
our_stack.push("3")
our_stack.push("4")
our_stack.push("5")
our_stack.push("6")
our_stack.push("7")
our_stack.push("8")
print(our_stack.peek())
print(our_stack.pop())
print(our_stack.peek())
print(our_stack.pop())
print(our_stack.printStack())