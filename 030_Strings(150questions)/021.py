'''
Find the first non-repeating character. 

input:
S = "aabbcde" 

output:
'c'
'''


s=input("Enter s: ")
res=""
visit=[]
for i in s:
    if i not in visit:
        count=0
        for j in s:
            if j==i:
                count+=1
        if count==1:
            res=i
            break
        visit.append(i)
print(res)        