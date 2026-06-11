'''
Maximum Subarra
'''


'''
Given an integer array nums, find the subarray with the largest sum, and return its sum.

 

Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.
Example 2:

Input: nums = [1]
Output: 1
Explanation: The subarray [1] has the largest sum 1.
Example 3:

Input: nums = [5,4,-1,7,8]
Output: 23
Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
'''




n=int(input("Enter length of array: "))
nums=[]
for i in range(n):
    nums.append(int(input(f"Enter {i+1}st integer: ")))
#print(nums)
maxx=nums[0]
final_res=[nums[0]]
for i in range(n):
    
    for j in range(i+1,n):
        summ=0
        res=nums[i:j+1]
        for k in res:
            summ+=k
        if summ>maxx:
            final_res=nums[i:j+1]
            maxx=summ
#print(final_res)  
print(maxx)