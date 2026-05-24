'''
Remove all punctuation characters. 

input:
S = "Hello, world!" 

output:
"Hello world"
'''


s=input("Enter s: ")
res=""
for i in s:
    if i=="." or i=="," or i=="!" or i=="?" or i==":" or i==";"or i=="'" or i=='"' or  i=="(" or i==")" or  i=="[" or i=="]"  or i=="{" or i=="}" or i=="-":

        continue
    else:
        res=res+i
print(res)        