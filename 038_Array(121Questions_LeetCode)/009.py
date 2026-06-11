'''
Intersection of Two Arrays II
'''


'''
Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.

 

Example 1:

Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2,2]
Example 2:

Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [4,9]
Explanation: [9,4] is also accepted.
 
'''



nums1=[]
nums2=[]
n1=int(input("Enter length of  array 1: "))
for i in range(n1):
    nums1.append(int(input(f"Enter {i+1}st integer: ")))
n2=int(input("\nEnter length of  array 2: ")) 
for i in range(n2):
    nums2.append(int(input(f"Enter {i+1}st integer: ")))   
#print(nums1)    
#print(nums2) 
res=[]
for i in nums1:
    if i in nums2:
        res.append(i)
print("output: ")        
print(res)        