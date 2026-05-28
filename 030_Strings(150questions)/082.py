'''
Create a string from a character array. 

input:
Char[] = {'h', 'i'} 

output:
"hi"
'''


char=input("Enter characters: ").split()
res=""
for i in char:
    res=res+i
print(res)    