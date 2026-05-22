'''
AI Auto-Correct Consecutive Word Remover

An AI-powered typing assistant often captures duplicate consecutive words while converting speech into text.

The company wants a Python program that removes only consecutive duplicate words while preserving the original sentence structure.

### Input:

text
hello hello hello team meeting meeting started


### Output:

text
hello team meeting started
'''






str=input("Enter string: ")
words=str.split()
prev=words[0]
res=words[0]+" "
i=1
while i<len(words):
    if prev!=words[i]:
        res=res + words[i]+" "
        prev=words[i]
    i+=1
print(res)    