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




#incomplete

st=input("Enter news headline: ")
words=st.split()
gre=0
big=""
for word in words:
    count=0
    for w in words:
        if w==word:
            count+=1
    if  count>gre:
        gre=count
        big=word
print(big)        
