'''
Generate a hash code or UUID. 

input:
S = "test" 

output:
Hash: 3556498 (Example hash code)
'''



s=input("Enter s: ")
res=0
for i in s:
    res=res*15+ord(i)
print(res)    