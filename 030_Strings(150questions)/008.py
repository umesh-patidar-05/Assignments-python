'''Toggle the case of each character. 

input:
S = "MiXED" 

output:
"mIxed"
'''



s=input("Enter S: ")
res=""
for ch in s:
    
    if ch>="A" and ch<="Z":
        res=res+chr(ord(ch)+32)
    elif ch>="a" and ch<="z":
        res=res+chr(ord(ch)-32)
        
print(res)     