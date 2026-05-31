'''
Remove adjacent duplicates recursively. 

input:
S = "azxxzy" 

output:
"ay"
'''

#NOT COMPLETE
s=input("Enter string: ")
pre=s[0]
res=pre
for i in range(1,len(s)):
    if s[i]!=pre:
        res=res+s[i]
        pre=s[i]
print(res)    