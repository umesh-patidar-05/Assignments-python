'''
Count how many times a substring appears. 

input:
S = "abab"
Sub = "ab" 

output:
2
'''


s=input("Enter string: ")
sub=input("substring : ")
i=0
count=0
while i<=len(s)-len(sub):
    found=1
    j=0
    while j<len(sub):
        if s[i+j]!=sub[j]:
            found=0
            break
        j+=1    
    if found==1:
        count+=1    
    i+=1
print("count =",count)    