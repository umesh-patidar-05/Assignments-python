'''
Replace occurrences of a character. 

input:
S = "apple"
Old='p'
New='x'

output:
"axxle"
'''



s=input("Enter s: ")
old=input("old: ")
new=input("new: ")
res=""
for i in s:
    if i==old:
        res=res+new
    else:    
        res=res+i    
print(res)        