'''
Check if two given strings appear at the end of each other (ignoring case). 

input:
S1 = "abc", S2 = "Xabc" 

output:
TRUE
'''


s1=input("Enter s1: ").lower()
s2=input("Enter s2: ").lower()
found=1

if len(s1)>len(s2):
    for i in range(-1,-len(s2)-1,-1):
        if s1[i]!=s2[i]:
            found=0
            break
else: 
    for i in range(-1,-len(s1)-1,-1):
        if s1[i]!=s2[i]:
            found=0
            break
        
if found==1:
    print("True")
else:
    print("False")