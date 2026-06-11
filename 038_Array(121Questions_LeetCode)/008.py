'''
Contains Duplicate
'''


'''
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 

Example 1:

Input: nums = [1,2,3,1]

Output: true

Explanation:

The element 1 occurs at the indices 0 and 3.

Example 2:

Input: nums = [1,2,3,4]

Output: false

Explanation:

All elements are distinct.

Example 3:

Input: nums = [1,1,1,3,3,4,3,2,4,2]

Output: true
'''



nums=[]
found=0
n=int(input("Enter length of array: "))
for i in range(n):
    nums.append(int(input(f"Enter {i+1}st integer: ")))
#print(nums)
for i in nums:
    count=0
    for j in nums:
        if i==j:
            count+=1
    if count>1:
        found=1
        break        
print("\nresult: ")
if found==1:
    print("true")
else:
    print("false")    