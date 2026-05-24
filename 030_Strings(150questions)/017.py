'''
Remove All  occurrences of a character. 

input:
S = "banana"
Char = 'a'

output:
"bnn"
'''



s=input("Enter s: ")
ch=input("char: ")
res=""
for i in s:
    if i==ch:
        continue
    res=res+i    
print(res)        