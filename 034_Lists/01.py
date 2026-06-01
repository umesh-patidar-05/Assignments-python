'''
Second Largest Unique Number
Scenario

A sports academy stores athlete scores in a list.

Find the second largest unique score.

Requirements
Read N and list elements from user
Find second largest unique number
If not available, display a message
Test Case

Input:

[10, 20, 30, 40, 40]

Output:

Second Largest = 30
'''


n=int(input("Enter length: "))
list=[]
for i in range(n):
    list.append(int(input("Enter element ")))
print(list)    

visit=[]
for i in list:
    if i not in visit:
        visit.append(i)      
visit.sort()
print("second largest: ",visit[-2])