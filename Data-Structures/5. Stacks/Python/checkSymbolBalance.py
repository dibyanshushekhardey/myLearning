# push pop and peek operation on stacks
class Stack(object):
    def __init__(self):
        self.items=[]
    def isEmpty(self):
        return self.items==[]
    def push(self, item):
        self.items.append(item)
    def pop(self):
        return self.item.pop()
    def peek(self):
        return self.items[-1]
    def __str__(self):
        return str(self.items)

def checkSymbolBalance(input):
    symbolstack=Stack()
    balanced=0
    for symbols in input:
        if symbols in ["(", "{", "["]:
            symbolstack.push(symbols)
        else:
            if symbolstack.isEmpty():
                balanced=0
            else:
                topSymbol=symbolstack.pop()
        if not matches(topSymbol, symbols):
            balanced=0
        else:
            balanced=1
    return balanced
    
print(checkSymbolBalance("([)]"))
print(checkSymbolBalance("{{([][])}()}"))