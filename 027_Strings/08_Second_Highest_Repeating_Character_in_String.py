'''
Find the Second Highest Repeating Character in a String

Social Media Trend Analysis System

A social media company analyzes hashtags and user comments to identify trending character patterns.

The analytics team wants a Python program to find the character with the second highest frequency in a given string.

This helps detect secondary trending patterns in user activity.

Input:

aaabbbbccddeee

Output:

e

Explanation:

b occurs 4 times → highest
e occurs 3 times → second highest

Condition:

Program should work for both uppercase and lowercase letters.
Spaces should be ignored.
If no second highest frequency exists, print:
Second highest repeating character not found
'''




s=input("Enter String: ")
highest1=""
maxcount1=0
for i in s:
    count=0
    for j in s:
        if j==i:
            count+=1
            
    if count>maxcount1:
        highest1=i
        maxcount1=count
#print(highest1)

s1=""
for i in s:
    if i==highest1:
        continue
    else:
        s1=s1+i

highest2=""
maxcount2=0    
for i in s1:
    count=0
    for j in s1:
        if i==j:
            count+=1
    if count>=maxcount2:
        highest2=i
        maxcount2=count
        
print("Result: ")        
print(highest2)