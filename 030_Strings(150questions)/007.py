'''
Convert a string to lowercase. 

input:
S = "HELLO" 

output:
"hello"
'''


'''
s=input("s = ").lower()
print(s)
'''




s=input("s = ")
res=""
for ch in s:
    if ch>="A" and ch<="Z":
        res=res+chr(ord(ch)+32)
    else:
        res=res+ch
print(res)        