'''
Count occurrences of a word. 

input:
S = "word word other word" 
Word = "word"

output: 
3
'''



s=input("Enter s = ")
word=input("word = ")
words=s.split()
count=0
for i in words:
    if i==word:
        count=count+1
print(count)        