'''
Remove the first, last, or all occurrences of a word.

input:
S = "a test b test c"
Word = "test" 

output:
"a b c"
'''


s=input("Enter s = ")
word=input("word = ")
res=""
words=s.split()
for i in words:
    if i==word:
        continue
    else:
        res=res+i+" "
print(res)    