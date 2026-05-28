'''
Remove adjacent duplicates recursively. 

input:
S = "azxxzy" 

output:
"ay"
'''

#not correct
s=input("Enter string: ")
pre=s[0]
res=pre
for i in range(1,len(s)):
    if s[i]!=pre:
        res=res+s[i]
        pre=s[i]
print(res)    