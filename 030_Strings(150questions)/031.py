'''
Remove duplicate words.

input:
s="the cat and the dog"

output:
"the cat and dog"
'''


s=input("Ente s: ")
words=s.split()
visit=[]
for word in words:
    if word not in visit:
        visit.append(word)
res=" ".join(visit)
print(res)