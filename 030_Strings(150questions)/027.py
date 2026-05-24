''' 
Find the last occurrence of a word. 

input:
S = "Test this test"
Word = "test" 

output:
13 (index)
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
        
        if match==1:
            res=i+j
        j=j+1  
    i=i+1
print(res)    