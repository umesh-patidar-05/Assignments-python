'''
Remove all vowels. 

input:
S = "aeiou XYZ" 

output:
" XYZ"
'''






s=input("Enter s: ")
res=""
for i in s:
    if i=="a" or i=="e" or i=="i" or i=="o" or i=="u" \
    or i=="A" or i=="E" or i=="I" or i=="O" or i=="U":
        continue
    else:
        res=res+i
print(res)        