'''
Find All Characters with Maximum Frequency
Website Traffic Analysis System

A web analytics company tracks user activity symbols in server logs.

The company wants to identify all characters having the maximum frequency in the given string.

Input:
aabbbccddd
Output:
b d
'''



s=input("Enter string: ")
visit=[]
gre=0
big=""
for c in s:
    count=0
    if c not in visit:
        for c1 in s:
            if c1==c:
                count+=1
                visit.append(c)
        if count>gre:
            gre=count
            big=c
        elif count==gre:
            big+=c
            
print(big)        
