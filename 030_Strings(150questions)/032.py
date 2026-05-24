'''
Count frequency of each word. 

input:
S = "apple banana apple" 

output:
apple: 2
banana: 1
'''


s=input("Ente s: ")
words=s.split()
visit=[]
for word in words:
    if word not in visit:
        count=0
        for i in words:
            
            if i==word:
                count+=1
        print(word,":",count)    
        visit.append(word)
