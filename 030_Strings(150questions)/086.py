'''
Print all permutations of a string without repetition. 

input:
S = "ab" 

output:
"ab", "ba"
'''



s=input("Enter s: ")
p=""
res=[]
for i in s:
    for j in s: 
        if i!=j:
            p=p+i+j
            if p not in res:
                res.append(p)
                p=""
#print(res)        
for i in res:
    print(i,end=", ")


