# Array is a data type which is of fixed capacity and can store a collection of elements. However we can use it to implement the list data structure.
# For implementation we will be using list data type in python which is internally a dynamic array which can grow and shrink based on the elements added to or removed from it. Initially, it is created with a certain capacity and based on elements getting added or removed, the capacity is increased or decreased respectively.
# To begin with, let’s create an empty list.
# Try out the code given in the code pane for creating an empty list and observe the result.

import sys

def list_details(lst):
    print("Capacity: ", (sys.getsizeof(lst) - 36)//4)

    print("Size: ", len(lst))
    print("Space Left:", ((sys.getsizeof(lst) - 36) - len(lst*4))//4)
    #formula changes based on the system architecture
    #(size-36)/4 for 32 bit machines and
    #(size-64)/8 for 64 bit machines

    # 36, 64 - size of an empty list based on machine
    # 4, 8 - size of a single element in the list based on machine

marias_lst = []
print("Empty list created!!!")
print("List details:")
list_details(marias_lst)

