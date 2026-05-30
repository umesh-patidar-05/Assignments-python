'''
Longest Consecutive Sequence
===============================

Scenario

Find the longest sequence of consecutive numbers present in the list.

Requirements

* Read N and list elements from user
* Find the length of the longest consecutive sequence
* Display the sequence length

Test Case 1

Input:
[100, 4, 200, 1, 3, 2]

Output:
Longest Consecutive Length = 4

Explanation:
Sequence = 1, 2, 3, 4

Test Case 2

Input:
[10, 11, 12, 20]

Output:
Longest Consecutive Length = 3

---
'''
 



n=int(input("Enter length: "))
list=[]
for i in range(n):
    list.append(int(input(f"Enter Element{i+1}: ")))
#print(list)
print()

long=[]
l=[]
list.sort()
#print(list)

for i in range(list[0],list[n-1]+1):
    if i in list:
        long.append(i)
    else:
        if len(long)>len(l):
            l=long
            long=[]     
#print(l)        


print("Longest Consecutive Length =:",len(l))
