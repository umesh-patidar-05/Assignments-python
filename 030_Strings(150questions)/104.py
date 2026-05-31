'''
Check if a string contains balanced brackets of all types ((), {}, []). 

input:
S = "{[()]}" 

output:
TRUE
'''


s=input("Enter s: ")
roundo=0
roundc=0
squareo=0
squarec=0
curlyo=0
curlyc=0
for i in s:
    if i=="(" or i==")":
        if i=="(":
            roundo+=1
        elif  i==")":
            roundc+=1
    elif i=="{" or i=="}": 
        if i=="{":
            curlyo+=1
        elif  i=="}":
            curlyc+=1        
    elif i=="[" or i=="]":
        if i=="[":
            squareo+=1
        elif  i=="]":
            squarec+=1


if roundo==roundc and curlyo==curlyc and squareo==squarec:        
    print("TRUE")
else:
    print("FALSE")