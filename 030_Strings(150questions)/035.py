'''
Find the first palindrome word.

input:
S = "this madam is here" 

output:
"madam"
'''

s=input("Enter s: ")
words=s.split()
for i in words:
    if i==i[::-1]:
        print(i)
        break