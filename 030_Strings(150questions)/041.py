'''
Check if a string contains a substring (without using built-in method). 

input:
S1 = "Hello"
Sub="ell"

output:
TRUE
'''


s=input("Enter s = ")
sub=input("sub = ")
i=0
match=1
while i<=len(s)-len(sub):
    j=0
    match=1
    while j<len(sub):
        if s[i+j]!=sub[j]:
            match=0
            break   
        j=j+1  
    if match==1:
        print("True")        
        break
    i=i+1
if match==0:
    print("False")    
