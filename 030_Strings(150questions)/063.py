'''
Count frequency of each character. 

input:
S = "aabcc" 

output:
a: 2
b: 1
c: 2
'''


s=input("Enter s: ")
found=[]
for i in s:
    count=0
    if i not in found:
        for j in s:
            if i==j:
                count+=1
        print(i,":",count)
        found.append(i)