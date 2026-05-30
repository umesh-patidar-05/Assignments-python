'''
First Repeating Number
=========================

Scenario

A security system logs employee IDs.

Find the first ID that repeats in the list.

Requirements

* Read N and list elements from user
* Find the first repeating number
* If no repeating number exists, display an appropriate message

Test Case 1

Input:
[10, 5, 3, 4, 3, 5]

Output:
First Repeating Number = 3

Test Case 2
  
Input:
[1, 2, 3, 4]

Output:
No Repeating Number Found

---
'''




n=int(input("Enter length: "))
ids=[]
for i in range(n):
    ids.append(int(input(f"Enter Employee{i+1} id: ")))
print(ids)
print()

res=0
for i in range(len(ids)):
    count=0
    for j in range(0,i+1):
        if ids[i]==ids[j]:
            count+=1
    if count>1:
        res=ids[i]
        break        
if res!=0:
    print("First Repeating Number =",res)
else:
    print("No Repeating Number Found")    
