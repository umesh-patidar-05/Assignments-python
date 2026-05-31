'''
Find the minimum number of insertions to make a string palindrome. 

input:
S = "aebcbda" 

output:
2 (insert 'd', 'e' → "adebcbeda")
'''



s=input("enter string: ")
insertcount=0
visit=[]
for i in s:
    count=0
    if i not in visit:
        for j in s:
            if i==j:
                count+=1
        if count%2!=0:
            insertcount+=1
        visit.append(i)    

if insertcount>1:
    print(insertcount-1)
else:
    print("no need to insert")