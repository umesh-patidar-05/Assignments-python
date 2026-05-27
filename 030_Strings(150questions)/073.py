'''
Find the longest palindromic substring. 

input:
S = "babad" 


output:
"bab" (or "aba")
'''



s=input("Enter string ")
long=1
res=""
for i in range(len(s)):
    for j in range(i,len(s)):
        sub=s[i:j+1]
        if sub==sub[::-1]:
            if len(sub)>long:
                res=sub
                long=len(sub)
print(res)            
            