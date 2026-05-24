'''
Reverse words without split(). 

input:
S = "a b c" 

output:
"c b a"
'''


s=input("Enter s: ")
words=""
word=""
res=""
for i in s:
   
    if i!=" ":
        word=word+i
    else:
        words=word+" "+words+" "
        word=""
res=(word+" "+words)        
print(res)