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
a1c1e2g2h1l1o2r1s1
'''



s=input("Enter string: ").lower()
visit=[]
for i in s:
    if i!=" ":
        if i not in visit:
            visit.append(i)
sort=sorted(visit)
for i in sort:
    count=0
    for j in s:
        if i==j:
            count+=1
    print(i,count,sep="",end="")        
