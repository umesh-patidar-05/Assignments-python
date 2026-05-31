'''
Print all permutations of a string with repetition. 

input:
S = "aab" 

output:
"aab", "aba", "baa"
'''

#NOT COMPLETE
s=input("Enter s:")
res=[]

for i in range(len(s)):
    
    for j in range(len(s)):
        for k in range(len(s)):
            p=""
            if i != j and i != k:
                p=p+s[i]+s[j]+s[k]
                if p not in res:
                    res.append(p)
                    p=""
print(res)                