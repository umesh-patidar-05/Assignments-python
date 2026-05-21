'''Find the Longest Substring Without Repeating Characters
Cybersecurity Session Tracking System

A cybersecurity company monitors user session IDs generated during secure login sessions.

To detect suspicious repeated patterns, the company wants a Python program that finds the longest substring containing no repeated characters.

Input:
abcabcbb
Output:
abc
'''







#incomplete
'''
s=input("Enter string: ")
visit=[]
res=""
for c1 in s:
    count=0
    if c1 not in visit:
        res=res+c1
        visit.append(c1)
    else:
       
print("".join(visit))    
'''


string=input("Enter string:  ")
visit=[]

final=""
for c in string:
    res=""
    if c not in visit:
        res=res+c
        visit.append(c)
    else:
        visit=[c]
        res=""
        res+=c
        
    print(res, end=" ")    
    final+= res + " "  
    