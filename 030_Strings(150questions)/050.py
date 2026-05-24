'''
Remove all digits. 

input:
S = "a1b2c3" 

output:
"abc"
'''



s=input("Enter s: ")
res=""
for i in s:
    if i>="0" and i<="9":
        continue
    else:
        res=res+i
print(res)        