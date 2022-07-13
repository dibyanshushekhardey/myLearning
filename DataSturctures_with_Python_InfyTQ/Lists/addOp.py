# add(element):
# 1. When the list is initially created, it is created with a certain capacity.
# 2. While adding the elements, if the list is filled to the capacity,
#    a. Create a new list with increased capacity
#    b. Copy the elements of initial list to the new list
# 3. Add the element to the end of the existing elements in the list
                  

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

marias_lst.append("Sugar")
print("Maria's list after adding sugar:")
print(marias_lst)
print("List details:")
list_details(marias_lst)