# The next greater element of some element x in an array is the first greater element that is to the right of x in the same array.
# You are given two distinct 0-indexed integer arrays nums1 and nums2, where nums1 is a subset of nums2.
# For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j] and determine the next greater element of nums2[j] in nums2. If there is no next greater element, then the answer for this query is -1.
# Return an array ans of length nums1.length such that ans[i] is the next greater element as described above.

class Solution:
    def nextGreaterElement(self, nums1: List[int], nums2: List[int]) -> List[int]:
        # hashmap
        nums={n:i for i, n in enumerate(nums1)}
        res=[-1]*len(nums1)
        for i in range(len(nums2)):
            if nums2[i] not in nums:
                continue
            for j in range(i+1, len(nums2)):
                if nums2[j] > nums2[i]:
                    ind = nums[nums2[i]]
                    res[ind]=nums2[j]
                    break
        return res

    
    # stack implementation
    class Solution:
    def nextGreaterElement(self, nums1: List[int], nums2: List[int]) -> List[int]:
        # hashmap
        nums={n:i for i, n in enumerate(nums1)}
        res=[-1]*len(nums1)
        
        stack=[]
        for i in range(len(nums2)):
            cur = nums2[i]
            while stack and cur > stack[-1]:
                val=stack.pop()
                ind = nums[val]
                res[ind]=cur
            if cur in nums:
                stack.append(cur)
        return res                
       
