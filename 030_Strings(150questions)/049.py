'''
Replace all consonants with '*' (Example suggests replacing non-vowels). 

input:
S = "apple" 

output:
a***e
'''



s=input("Enter s: ")
res=""
for i in s:
    if i=="a" or i=="e" or i=="i" or i=="o" or i=="u" \
    or i=="A" or i=="E" or i=="I" or i=="O" or i=="U":
        res=res+i
    elif i==" ":
        res=res+" "
    else:
        res=res+"*"
print(res)        