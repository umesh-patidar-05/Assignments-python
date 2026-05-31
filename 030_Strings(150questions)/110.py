'''
Find the lexicographically largest substring of length k. 

input:
S = "banana"
k = 3 

output:
"nan"
'''




s=input("Entert sring s: ")
k=int(input("Enter length: "))
res=[]
for  i in range(len(s)):
    sub=""
    for j in range(i,len(s)):
        sub=s[i:j+1]
        if len(sub)==k:
            res.append(sub)

res.sort()
print(res[len(res)-1])