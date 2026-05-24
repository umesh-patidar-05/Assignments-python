'''
Reverse each word. 

input:
S = "cat dog" 

output:
"tac god"
'''



s=input("Enter s: ")
words=s.split()
res=""
for word in words:
    res=res+word[::-1]+" "
print(res)    