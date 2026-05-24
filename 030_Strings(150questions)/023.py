'''
Print all characters that occur exactly twice. 

input:
S = "aabbcdee" 

output:
a b e
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
        if count==2:
            res+=i+" "
            
        visit.append(i)
print(res)        