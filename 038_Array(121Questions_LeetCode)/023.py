'''
Subarray Sum Equals K
'''


'''
Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

A subarray is a contiguous non-empty sequence of elements within an array.

 

Example 1:

Input: nums = [1,1,1], k = 2
Output: 2
Example 2:

Input: nums = [1,2,3], k = 3
Output: 2
'''



n=int(input("Enter length of array: "))
nums=[]
for i in range(n):
    nums.append(int(input(f"Enter {i+1}th integer: ")))
#print(nums)
count=0
sub=[]
k=int(input("Enter k: "))
for i in range(n):
    for j in range(i,n):
        sub=nums[i:j+1]
        if sum(sub)==k:
            #print(nums[i:j])
            count+=1
print(count)            
