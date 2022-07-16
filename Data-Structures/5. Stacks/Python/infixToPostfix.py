# infix to postfix

class Conversion:
    def __init__(self, capacity):
        self.top=-1
        self.capacity=capacity
        self.array=[]  # to be used as stack
        self.output = [] # precedence setting
        self.output=[]
        self.precedence={'+':1, '-':1, '*':2, '/':2, '^':3}
        
    # check if stack is empty
    def isEmpty(self):
        return True if self.top == -1 else False
    # return the value f the top of the stack
    def peek(self):
        return self.array[-1]
    # pop the element of stack
    def pop(self):
        if not self.isEmpty():
            self.top -= 1
            return self.array.pop()
        else:
            return "$"
    #push the element to the stack
    def push(self, op):
        self.top += 1
        self.array.append(op)
    
    # a utility function to check 
    # if the given character 
    # is an operand
    def isOperand(self, ch):
        return ch.isalpha()
    
    # check if the precedence of operator
    # is strictly
    # less than top of stack or not
    def notGreater(self, i):
        try:
            a = self.precedence[i]
            b = self.precedence[self.peek()]
            return True if a <= b else False
        except KeyError:
            return False
    
    # the main function that 
    # cinverts given infix to postfix expression
    def infixToPostfix(self, exp):
        for i in exp:    # iterate over expression for conversion
            # if the character is an operand
            # add it to output
            if self.isOperand(i):
                self.output.append(i)
                
            # if the character is an '(', push it to stack
            elif i == '(':
                self.push(i)
            # if the scanned character is an ')', pop
            # and output from the stack until and '(' is found
            elif i == ')':
                while((not self.isEmpty()) and
                self.peek() != '('):
                    a=self.pop()
                    self.output.append(a)
                if (not self.isEmpty()  and self.peek() != '('):
                    return -1
                else:
                    self.pop()
                    
            # an operator is encountered
            else:
                while(not self.isEmpty() and self.notGreater(i)):
                    if i == '^' and self.array[-1] == i:
                        break
                    self.output.append(self.pop())
                self.push(i)
                
        # pop all operator from the stack
        while not self.isEmpty():
            self.output.append(self.pop())
        
        print("".join(self.output))
        

exp="a+b*(c^d-e)^(f+g*h)-i"
obj = Conversion(len(exp))
obj.infixToPostfix(exp)