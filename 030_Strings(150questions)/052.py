'''
Remove all special characters. 

input:
S = "a!@b#c" 

output:
"abc"
'''


s=input("Enter s = ")
res=""
for i in s:
    if i>="a" and i<="z" or i>="A" and i<="Z"\
    or i>="0" and i<="9":
        res=res+i
print(res)        