'''
Get the Unicode code point before index. 

input:
S = "Hello" 
Index = 1 

output:
72 (Unicode for 'H')
'''


s=input("Enter s: ")
index=int(input("Enter index: "))
print(ord(s[index-1]),"(unicode for",s[index-1],")")
