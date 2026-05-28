'''
Find the longest common prefix among strings. 

input:
Strings = ["flower", "flow", "flight"] 

output:
"fl"
'''



s=input("Enter strings: ")
res=""
found=1
words=s.split()
word=words[0]
for i in range(len(word)):
    for j in range(1,len(words)):
        w=words[j]
        if i<len(w):
            if w[i]!=word[i]:
                found=0
                break
        else:
            continue
    if found==1:
        res=res+word[i]
print(res)




