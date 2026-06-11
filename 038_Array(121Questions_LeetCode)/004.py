# Search Insert Position 


'''
Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.

 

Example 1:

Input: nums = [1,3,5,6], target = 5
Output: 2
Example 2:

Input: nums = [1,3,5,6], target = 2
Output: 1
Example 3:

Input: nums = [1,3,5,6], target = 7
Output: 4
'''



n=int(input("Enter length of array: "))
nums=[]
for i in range(n):
    nums.append(int(input(f"Enter {i+1} element: ")))
target=int(input("Enter value to find: "))
if target in nums:
    for i in range(n):
        if nums[i]==target:
            print("target index position is: ",i)
            break
else:
    for i in range(n):
        if i==0:
            if target<nums[i]:
                print("index postion to insert target value is: ",i)
                break
        elif i==n-1:
            if target>nums[i-1] and target<nums[i]:
                print("index postion to insert target value is: ",i)
                break  
            else:    
                print("index postion to insert target value is:: ",i+1)
                break
        else:
            
           if target>nums[i-1] and target<nums[i]:
                print("index postion to insert target value is: ",i)
                break     
