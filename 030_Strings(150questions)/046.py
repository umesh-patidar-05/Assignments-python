'''
Check if a substring appears at both the start and end. 

input:
S = "abcabca"
Sub="abca" 

output:
TRUE
'''


s=input("Enter s = ")
sub=input("sub = ")
found=1
i=0
while i<len(sub):
    if s[i]!=sub[i]:
        found=0    
        break    
    
    if s[len(s)-len(sub)+i]!=sub[i]:    
        found=0
        break
    i+=1
if found==0:
    print("False")
else:
    print("True")