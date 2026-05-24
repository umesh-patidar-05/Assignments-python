'''
Find the longest word. 

input:
S = "find the longest word" 

output:
"longest"
'''


s=input("Enter s: ")
words=s.split()
long=len(words[0])
res=words[0]
i=1
while i<len(words):
    if len(words[i])>long:
        long=len(words[i])
        res=words[i]
    i+=1
print(res)    