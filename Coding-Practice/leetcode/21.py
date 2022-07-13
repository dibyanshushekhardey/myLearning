#You are given the heads of two sorted linked lists list1 and list2.
#Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
#Return the head of the merged linked list.

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        # bypasses the edge case of having empty node
        dummy = ListNode()
        tail = dummy
        
        # if the lists are non empty
        while list1 and list2:
            if list1.val < list2.val:   # if the value of l1 element is greater than l2
                tail.next = list1
                list1=list1.next
            else:                       # if the value of l2 is greater than l1
                tail.next=list2
                list2=list2.next
            tail = tail.next
            
        if list1:                   # if there is still elements left after traversing
            tail.next = list1
        elif list2:
            tail.next = list2
        
        return dummy.next
