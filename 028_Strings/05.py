'''
Cybercrime Log Analysis System

A cybersecurity company monitors encrypted login activity stored as character-based security logs.

During investigation, analysts need to identify the last character that repeats in the log sequence.
This helps detect the most recent duplicated activity pattern before a possible security breach.

Write a Python program to find the last repeating character in a given string.

If no repeating character exists, print:

No repeating character found
Input:
abccdbefga
Output:
a
'''


str=input("Enter string ")
i=len(str)-1
res=""
while i>=0:
    count=0
    for s in str:
        if s==str[i]:
            count+=1
    if count>1:
        res=str[i]
        found=1
        break
    else:
        found=0
    i-=1        
if found==0:
    print("no repeating character found ")    
else:
    print(res)   