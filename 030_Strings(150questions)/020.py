'''
Find the lowest frequency character. 

input:
S = "aabbcde" 

output:
'c', 'd', 'e' (any one or all)
'''





s=input("Enter s: ")
low=len(s)
res=""
visit=[]
for i in s:
    if i not in visit:
        countt=0
        countt=s.count(i)
        if countt<low:
            low=countt
            res=i
        visit.append(i)
print(res)   
