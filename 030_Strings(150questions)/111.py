'''
Check if a string can be rearranged into a palindrome. 

input:
S = "aabbc" 

output:
TRUE
'''



s=input("enter string: ")
oddcount=0
visit=[]
for i in s:
    count=0
    if i not in visit:
        for j in s:
            if i==j:
                count+=1
        if count%2!=0:
            oddcount+=1
        visit.append(i)    

if oddcount==0 or oddcount==1:
    print("TRUE")
else:
    print("FALSE")