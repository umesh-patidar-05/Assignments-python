'''
Print all substrings. 

input:
S = "abc" 

output:
"a, b, c, ab, bc, abc"
'''



s=input("Enter string: ")
for i in range(len(s)):
    for j in range(i,len(s)):
        sub=s[i:j+1]
        print(sub,end=", ")