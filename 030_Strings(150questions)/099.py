'''
Check if a 'z' is happy (surrounded by same chars). 

input:
S = "azzb" 

output:
FALSE
'''



s=input("Enter s:")
found=1
for i in range(len(s)):
    if i!=0 and i!=len(s)-1:
        if s[i]=="z":
            if s[i-1]!=s[i+1]:
                found=0
                break
                
if found==1:
    print("TRUE")
else:
    print("FALSE")    