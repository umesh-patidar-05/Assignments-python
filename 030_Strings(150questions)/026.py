'''
Find the first occurrence of a word. 

input:
S = "Test this test"
Word = "test"

output:
10(index)
'''



s=input("Enter s: ")
word=input("word: ")
count=0
i=0
while i<=len(s)-len(word):
    j=0
    match=1
    while j<len(word):
        if s[i+j]!=word[j]:
            match=0
            break
        j=j+1
    if match==1:
        res=i 
    i=i+1
print(res)    