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




s=input("Enter string: ")
visit=[]
c1=[]

res=0
for  ch1 in s:
    count=0
    if ch1 not in visit:
        for ch2 in s:
            if ch1==ch2:
                count+=1
        c1.append(count)        
        visit.append(ch1)
print(c1)        