'''
Count how many times 'life' appears in a string. 

input:
S = "life is life" 

output:
2
'''



s=input("Enter string: ")
sub="life"
count=0
for i in range(len(s)-len(sub)+1):
    found=1
    for j in range(len(sub)):
        if s[i+j]!=sub[j]:
            found=0
            break
        j+=1    
    if found==1:
        count+=1    
    i+=1
print("count =",count)    