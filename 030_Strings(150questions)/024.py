'''
Check if all characters in a string are unique.

input: 
S1 = "abc"
output:
S1: True

input:
S1 = "abca" 
output:
S1: False
'''


s=input("Enter s1: ")
visit=[]
found=0
for i in s:
    if i not in visit:
        count=0
        for j in s:
            if j==i:
                count+=1
        if count>1:
            found=1
            break
        visit.append(i)    
if found==1:
    print("s1 = False")
else:
    print("s1 = True")