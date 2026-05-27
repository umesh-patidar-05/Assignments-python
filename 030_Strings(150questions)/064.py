'''
Count frequency of each vowel. 

input:
S = "programming" 

output:
o: 1
a: 1 
e: 0
i: 0
u: 0
'''


s=input("Enter s: ")
voe="aeiou"
visit=[]
count=0
for i in s:
    if i in voe:
        if i not in visit:
            for j in s:
                if i==j:
                    count+=1
            print(i,":",count)    
            count=0
            visit.append(i)

for k in voe:
    if k not in visit:
        print(k,":",count)