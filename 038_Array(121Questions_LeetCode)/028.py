'''
 Minimum Size Subarray Sum
'''


'''
Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

 

Example 1:

Input: target = 7, nums = [2,3,1,2,4,3]
Output: 2
Explanation: The subarray [4,3] has the minimal length under the problem constraint.
Example 2:

Input: target = 4, nums = [1,4,4]
Output: 1
Example 3:

Input: target = 11, nums = [1,1,1,1,1,1,1,1]
Output: 0
'''



n=int(input("Enter length of array: "))
nums=[]
for i in range(n):
    nums.append(int(input(f"Enter {i+1}th integer: ")))
#print(nums)
target=int(input("Enter target : "))
found=0
res=nums
for i in range(n):
    for j in range(i,n):
        sub=nums[i:j+1]
        if sum(sub)>=target:
           if len(sub)<len(res):
               found=1
               res=sub
if found==1:
    print(len(res))               
else:
    print("0")    