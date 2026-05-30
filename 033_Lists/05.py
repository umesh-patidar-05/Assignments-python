'''
Equilibrium Index Finder
===========================

Scenario

Find an index where:

 Sum of elements on the left side

Sum of elements on the right side

Requirements

* Read N and list elements from user
* Find equilibrium index
* If not found, display message

Test Case 1

Input:
[1, 3, 5, 2, 2]

Output:
Equilibrium Index = 2

Explanation:
1 + 3 = 2 + 2

Test Case 2

Input:
[1, 2, 3]

Output:
No Equilibrium Index Found

---
'''
 



n=int(input("Enter length: "))
list=[]
for i in range(n):
    list.append(int(input(f"Enter Element{i+1}: ")))
#print(list)
print()
index=-1
for i in range(n):
    leftsum=0
    rightsum=0
    for j in range(n):
        if j<i:
            leftsum+=list[j]
        elif j>i:
            rightsum+=list[j]
    if leftsum==rightsum:
        index=i
        break            
if index>0:
    print("Equilibrium Index =",index)
else:
    print("No Equilibrium Index Found")    


