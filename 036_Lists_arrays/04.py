'''
Find common elements in three sorted arrays.
Given three arrays sorted in increasing order. Find the elements that are common in all three arrays.
Note: can you take care of the duplicates without using any additional Data Structure?
Example 1:
Input:
n1 = 6; A = {1, 5, 10, 20, 40, 80}
n2 = 5; B = {6, 7, 20, 80, 100}
n3 = 8; C = {3, 4, 15, 20, 30, 70, 80, 120}
Output: 20 80
Explanation: 20 and 80 are the only
common elements in A, B and C.
'''

n1=int(input("Enter array A length: "))
A=[]
print("Enter array A")
for i in range(n1):
    A.append(int(input()))

n2=int(input("Enter array B length: "))
B=[]
print("Enter array B")
for i in range(n2):
    B.append(int(input()))

n3=int(input("Enter array C length: "))
C=[]
print("Enter array C")
for i in range(n3):
    C.append(int(input()))
    
#print(A)
#print(B)
#print(C) 
print("Result:")   
visit=[]
for i in A:
    if i not in visit:
        if i in B and i in C:
            print(i,end=" ")
        visit.append(i)    