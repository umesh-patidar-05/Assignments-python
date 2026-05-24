'''
Find the shortest word. 

input:
S = "find the shortest word" 

output:
"the"
'''




s=input("Enter s: ")
words=s.split()
short=len(s)
res=" "
i=0
while i<len(words):
    if len(words[i])<short:
        short=len(words[i])
        res=words[i]
    i+=1
print(res)    