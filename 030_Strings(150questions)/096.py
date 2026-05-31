'''
Find the second most frequent word. 

input:
S = "a b a c b" 

output
c
'''


#NOT CORRECT
s=input("Enter s: ")
words=s.split()

unique=[]
for word in words:
    if word not in unique:
        unique.append(word)
print(unique)        

c1=0
for i in unique:
    count=0
    for j in words:
        if i==j:
            count+=1
    if count>=c1:
        c1=count
        most1=i

seclist=[]
for i in unique:
        if i!=most1:
            seclist.append(i)
            
print(seclist)
c2=0
for i in seclist:
    count=0
    for j in words:
        if i==j:
            count+=1
    if count>=c2:
           c2=count
           most2=i
         
print("second most frequent word = ",most2)         