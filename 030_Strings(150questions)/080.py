'''
Print list items containing all characters of a given word. 

input:
List = ["apple", "plea"]
Word = "pal"

output:
"apple", "plea"
'''



lis=input("Enter list: ").split()
#lis=["apple", "plea" ,"ples"]
word=input("enter word: ")
res=[]

for i in lis:
    for j in word:
        found=0
        if j not in i:
            break
        else:
            found=1
    if found==1:
        res.append(i) 
print(res)        