'''
Check for substring using concatenation trick. 

input:
S1="CDAB"
S2="ABCD" 

output:
True (S1 is in S2+S2)
'''


'''
s1=input("s1 = ")
s2=input("s2 = ")
concate=s2+s2
if s1 in concate:
    print("True")
else:
    print("False")
'''



s1=input("s1 = ")
s2=input("s2 = ")
concate=s2+s2
i=0
match=1
while i<=len(concate)-len(s1):
    j=0
    match=1
    while j<len(s1):
        if concate[i+j]!=s1[j]:
            match=0
            break   
        j=j+1  
    if match==1:
        print("True")        
        break
    i=i+1
if match==0:
    print("False")    
    