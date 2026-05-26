'''
Rotate characters right by 3 positions. 

input:
S = "abcde" 

output:
"cdeab"
'''

s=input("Enter s: ")
res=""
i=len(s)-3
while i<len(s):
    res=res+s[i] 
    i+=1
j=0
while j<len(s)-3:
    res=res+s[j]
    j+=1
print(res)
