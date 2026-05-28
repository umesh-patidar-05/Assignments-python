'''
Print ASCII value of each character. 

input:
S = "A" 

output:
A: 65
'''



s=input("Enter string: ")
for i in s:
    print(i,":",ord(i))