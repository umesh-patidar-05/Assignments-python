'''
Find the first occurrence of a character. 

input:
S = "banana"
Char = 'a' 

output:
1 (index)
'''


s=input("Enter s: ")
ch=input("char: ")
i=0
while i<len(s):
    if s[i]==ch:
        print("index =",i)
        break
    i+=1    