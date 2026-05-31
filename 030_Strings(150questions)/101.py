'''
Check if a string is a valid palindrome ignoring spaces and punctuation. 

input:
S = "A man, a plan, a canal: Panama"

output:
TRUE
'''


s=input("Enter string: ").lower()
res=""
for i in s:
    if i.isalnum():
        res=res+i
        
print(res)        

rev=""
for i in res:
    rev=i+rev
    
if rev==res:
    print("TRUE")
else:
    print("FALSE")    
    