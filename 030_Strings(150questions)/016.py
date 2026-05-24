'''
Count total occurrences of a character. 

input:
S = "programming"
Char = 'g'

output:
2
'''



s=input("Enter s: ")
ch=input("char: ")
count=0
for i in s:
    if i==ch:
        count+=1
print(count)        