'''
Replace Consecutive Duplicate Characters with Single Character
Data Compression System

A cloud storage company wants to reduce unnecessary repeated characters in text logs.

Write a Python program that replaces consecutive duplicate characters with a single occurrence.

Input:
aaabbbccccdddaa
Output:
abcda
'''


s=input("Enter string ")
res=s[0]
i=1
while i<len(s):
    if s[i-1]!=s[i]:
        res=res+s[i]   
    i+=1
print(res) 