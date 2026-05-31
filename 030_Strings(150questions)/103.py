'''
Check if a string contains balanced parentheses. 

input:
S = "((()))" 

output:
TRUE
'''


s=input("Enter s: ")
ocount=0
ccount=0
for i in s:
    if i=="(":
        ocount+=1
    elif  i==")":
        ccount+=1
if ocount==ccount:
    print("TRUE")
else:
    print("FALSE")