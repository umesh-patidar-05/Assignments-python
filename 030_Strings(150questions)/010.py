'''
Trim leading, trailing, or extra spaces. 
input:
S = " hello world " 
output:
"hello world"
'''


s=input("Enter s: ")
res=""
words=s.split()
for word in words:
    res=res+word+" "
print(res)    