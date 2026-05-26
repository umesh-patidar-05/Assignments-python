'''
Append two strings but remove adjacent duplicates. 

input:
S1="miss"
S2="issippi" 

output:
"misisipi"
'''



s1=input("Enter s1: ")
s2=input("enter s2: ")
pre1=s1[0]
res=pre1
i=1
while i<len(s1):
    
    if s1[i]!=pre1:
        res=res+s1[i]
        pre1=s1[i]  
    i+=1

pre2=s2[0]
res=res+pre2
j=1
while j<len(s2):
    
    if s2[j]!=pre2:
        res=res+s2[j]
        pre2=s2[j]  
    j+=1    
    
print(res)