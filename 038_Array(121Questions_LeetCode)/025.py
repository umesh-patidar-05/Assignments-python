'''
 Find First and Last Position of Element in Sorted Array
'''


'''
Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

If target is not found in the array, return [-1, -1].

You must write an algorithm with O(log n) runtime complexity.

 

Example 1:

Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
Example 2:

Input: nums = [5,7,7,8,8,10], target = 6
Output: [-1,-1]
Example 3:

Input: nums = [], target = 0
Output: [-1,-1]
'''





n=int(input("Enter length of array: "))
nums=[]
for i in range(n):
    nums.append(int(input(f"Enter {i+1}th integer: ")))
#print(nums)
target=int(input("Enter target : "))
res=[]
starting=-1
for i in range(n):
    if nums[i]==target:
        starting=i
        break
ending=-1
for i in range(starting+1,n):
    if nums[i]==target:
        ending=i
        
res=[starting, ending]        
print(res)
