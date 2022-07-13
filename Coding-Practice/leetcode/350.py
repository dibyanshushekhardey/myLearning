#Given two integer arrays nums1 and nums2, return an array of their intersection.  
# Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.

class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        nums3=[]
        #nums1.sort()
        #nums2.sort()
        for i in nums1:
            if i in nums2:
                nums3.append(i)
                nums2.remove(i)
        return nums3
        
