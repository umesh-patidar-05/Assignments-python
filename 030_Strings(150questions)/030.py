'''
Replace a word with another word.

input:
s="old data"
Old="old"
New="new"

output:
"new data"
'''



s=input("Enter s: ")
old=input("old = ")
new=input("new = ")
res=""
words=s.split()
for word in words:
    if word==old:
        res=res+ new+" "
    else:    
        res=res+word+" " 
print(res)    