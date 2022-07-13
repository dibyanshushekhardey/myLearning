# insert(pos, element):
#  1. If the list is filled to capacity
#     a. Create a new list with increased capacity
#     b. Copy the elements of initial list to the new list
#  2. Shift right all the existing elements from index position (pos) by 1 position
#  3. Insert the element at index position (pos)
                
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

marias_lst.append("Tea Bags")
marias_lst.append("Milk")
marias_lst.append("Biscuit")
#print("Maria's list after adding sugar:")
print(marias_lst)
print("List details:")
list_details(marias_lst)

marias_lst.insert(1, "Salt")
print(marias_lst)
print("List details: ")
list_details(marias_lst)