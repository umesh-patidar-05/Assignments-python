'''
Move Zeroes
'''



'''
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.

 

Example 1:

Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
Example 2:

Input: nums = [0]
Output: [0]
'''



n=int(input("Enter length of array: "))
nums=[]
for i in range(n):
    nums.append(int(input(f"Enter {i+1}st element: ")))
#print(nums)
zerocount=0
for i in nums:    
    if i==0:
        zerocount+=1
        
for i in nums[:]:
    if i==0:
        nums.remove(i)
count=0
while count<zerocount:
    nums.append(0)
    count+=1
print("Result: ")    
print(nums)               