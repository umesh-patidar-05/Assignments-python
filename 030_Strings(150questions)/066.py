'''
Count number of sentences in a paragraph. 

input:
P = "This. Is. Test." 

output:
3
'''


p=input("Enter paragraph = ")
count=0
for i in p:
    if i==".":
        count+=1
print(f"count: {count}")        