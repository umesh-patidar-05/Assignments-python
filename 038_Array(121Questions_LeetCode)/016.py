'''
Sum of All Odd Length Subarrays
'''




'''
Given an array of positive integers arr, return the sum of all possible odd-length subarrays of arr.

A subarray is a contiguous subsequence of the array.

 

Example 1:

Input: arr = [1,4,2,5,3]
Output: 58
Explanation: The odd-length subarrays of arr and their sums are:
[1] = 1
[4] = 4
[2] = 2
[5] = 5
[3] = 3
[1,4,2] = 7
[4,2,5] = 11
[2,5,3] = 10
[1,4,2,5,3] = 15
If we add all these together we get 1 + 4 + 2 + 5 + 3 + 7 + 11 + 10 + 15 = 58
Example 2:

Input: arr = [1,2]
Output: 3
Explanation: There are only 2 subarrays of odd length, [1] and [2]. Their sum is 3.
Example 3:

Input: arr = [10,11,12]
Output: 66
'''




n=int(input("Enter length of array: "))
nums=[]
for i in range(n):
    nums.append(int(input(f"Enter {i+1} integer: ")))
#print(nums)
summ=0 
for i in range(n):
    for k in range(i,n):
       sub=nums[i:k+1]
       #print(sub)
       if len(sub)%2!=0:
           for k in sub:
               summ=summ+k
print(summ)               

