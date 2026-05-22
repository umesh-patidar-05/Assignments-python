'''
Intelligent Search Query Compressor

A search engine company wants to compress user queries.

## Rules:

* Count frequency of each character
* Display characters in sorted order
* Ignore spaces
* Case insensitive

### Input:

text
Google Search


### Output:

text
a1c1e2g2h1l1o2r1s1t1
'''


#not correct
str=input("Enter string: ").lower()
f=""
s=""
pre=""
for ch in str:
    if ch!=" ":
        s=s+ch
        
f=sorted(s)
pre=f[0]
count=0
i=1
while i<len(f):
    
    if pre==f[i]:
        count+=1
        #pre=f[i]
    else:
        print(pre,count,end=" ")
        #pre=f[i]
    pre=f[i]    
    i+=1    