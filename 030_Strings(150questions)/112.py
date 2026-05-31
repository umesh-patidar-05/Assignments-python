'''
Find the minimum number of deletions to make a string palindrome. 

input:
S = "aebcbda" 

output:
2 (delete 'e', 'd' → "abcba")
'''


s=input("enter string: ")
deletecount=0
visit=[]
for i in s:
    count=0
    if i not in visit:
        for j in s:
            if i==j:
                count+=1
        if count%2!=0:
            deletecount+=1
        visit.append(i)    

if deletecount>1:
    print(deletecount-1)
else:
    print("no need to delete")