'''
Find the longest common suffix among strings. 

input:
Strings = ["baking", "making", "taking"] 

output:
"aking"
'''



s=input("Enter strings: ")
res=""
found=1
words=s.split()
word=words[0]
for i in range(-1,-(len(word)),-1):
    for j in range(1,len(words)):
        w=words[j]
        if i>-(len(w)):
            if w[i]!=word[i]:
                found=0
                break
        else:
            continue
    if found==1:
        res=word[i]+res
print(res)