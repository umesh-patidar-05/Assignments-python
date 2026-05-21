'''
Find the First Non-Repeated Character

Railway Ticket Fraud Detection System

The railway department generates ticket reference IDs automatically.

Sometimes, due to technical issues, many characters get repeated inside the ticket ID.

The department wants a Python program that finds the first character that appears only once in the string.

Example 1

Input:
aabbccddefg
Output:


e
'''

s=input("Enter string: ")
for s1 in s:
    count=0
    for s2 in s:
        if s1==s2:
            count+=1
    if count==1:
        print(s1)
        break
