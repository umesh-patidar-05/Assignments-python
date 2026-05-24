'''
Find the last occurrence of a character. 

input:
S = "banana"
Char = 'a'

output:
5 (index)
'''



s=input("Enter s: ")
ch=input("char: ")
i=len(s)-1
while i>=0:
    if s[i]==ch:
        print("index =",i)
        break
    i=i-1    