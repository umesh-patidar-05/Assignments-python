'''
Find the highest frequency character. 

input:
S = "abracadabra" 

output:
'a'
'''



'''
s=input("Enter s: ")
max=0
for i in s:
    countt=0
    countt=s.count(i)
    if countt>max:
        countt=max
        res=i
print(res)            
'''


s=input("Enter s: ")
max=0
visit=[]
res=""
for i in s:
    count=0
    if i not in visit:
        for j in s:
            if j==i:
                count+=1
        if count>max:
            max=count
            res=i
        visit.append(i)
print(res)        