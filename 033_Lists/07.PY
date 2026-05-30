'''
Array Rotation Analyzer
==========================

Scenario

Rotate the array K times towards the right.

Requirements

* Read N and list elements from user
* Read K
* Rotate the array
* Display rotated array

Test Case 1

Input:
Array = [1, 2, 3, 4, 5]
K = 2

Output:
[4, 5, 1, 2, 3]

Test Case 2

Input:
Array = [10, 20, 30, 40]
K = 1

Output:
[40, 10, 20, 30]

---
'''





n=int(input("Enter length: "))
arr=[]
for i in range(n):
    arr.append(int(input(f"Enter Element{i+1}: ")))
print("Array =",arr)
print()

k=int(input("Enter k = "))

res=[]
for i in range(n-k,n):
    res.append(arr[i])
for j in range(n-k):
    res.append(arr[j])    
    
print(res)