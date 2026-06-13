'''
Sort Colors
'''


''''
Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

You must solve this problem without using the library's sort function.

 

Example 1:

Input: nums = [2,0,2,1,1,0]
Output: [0,0,1,1,2,2]
Example 2:

Input: nums = [2,0,1]
Output: [0,1,2]
'''







n=int(input("Enter length of array: "))
nums=[]
for i in range(n):
    nums.append(int(input(f"Enter {i+1}th integer: ")))
#print(nums)

res=[]
for i in nums:
    if i==0:
        res.append(i)
for i in nums:
    if i==1:
        res.append(i)
for i in nums:
    if i==2:
        res.append(i)
print(res)                
