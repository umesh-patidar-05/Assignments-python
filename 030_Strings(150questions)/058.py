'''
Rotate characters by 2 positions to the left. 

input:
S = "abcde" 

output:
"cdeab"
'''


s=input("Enter s1 = ")
res=""
i=2
while i<len(s):
    res=res+s[i]
    i+=1
j=0
while j<2:
    res=res+s[j]
    j+=1
print(res)    
    
    