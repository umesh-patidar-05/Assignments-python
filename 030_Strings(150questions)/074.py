'''
Find the longest substring without repeating characters. 

input:
S = "abcabcbb" 

output:
"abc"
'''



s=input("Enter string: ")
long=1
for i in range(len(s)):
    for j in range(i,len(s)):
        sub=s[i:j+1]
        found=0
        for k in sub:
            count=0
            for l in sub:
                if k==l:
                    count+=1
            if count!=1:
                found=1
                break
        if found==0:
            if len(sub)>long:
                res=sub
                long=len(sub)
print(res)                    


