'''
Convert a string to uppercase. 

input:
S = "hello" 

output:
"HELLO"
'''


'''
s=input("s = ").upper()
print(s)
'''


s=input("s = ")
res=""
for ch in s:
    if ch>="a" and ch<="z":
        res=res+chr(ord(ch)-32)
    else:
        res=res+ch
print(res)        