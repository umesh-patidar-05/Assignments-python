'''
Print all substrings of length n. 

input:
S = "abc"
n = 2 


output:
"ab, bc"
'''


s=input("Enter string: ")
n=int(input("Enter substring length: "))
for i in range(len(s)):
    for j in range(i,len(s)):
        sub=s[i:j+1]
        if n==len(sub):
            print(sub,end=", ")