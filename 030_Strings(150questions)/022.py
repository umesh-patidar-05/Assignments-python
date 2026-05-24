'''
Find the last repeating character. 

input:
S = "abracadabra" 

output:
'r'
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
        if count>=max:
            max=count
            res=i
        visit.append(i)
print(res)        