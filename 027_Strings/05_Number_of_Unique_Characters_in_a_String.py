'''
Find the Number of Unique Characters in a String

Password Strength Analyzer

A cybersecurity company checks password strength based on the number of unique characters present.

Passwords containing more unique characters are considered more secure.

Write a Python program to count the number of unique characters in a string.

Input:


aabbccdde


Output:


5
'''


s=input("Enter string: ")
visit=[]
count=0
res=0
for  ch1 in s:
    if ch1 not in visit:
        count+=1
        visit.append(ch1)
print(count)        