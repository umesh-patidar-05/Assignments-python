'''
Reverse Sentence + Reverse Each Word

Secret Military Communication Decoder
A defense organization stores highly confidential messages in encrypted form.
To decode the message:

1. Reverse the entire sentence.
2. Reverse every individual word.
3. Store the final result back into the original string variable.

You must use the split() method.
Input:


Python is powerful


Output:


lufrewop si nohtyP
'''

s=input("Enter string: ")
res=""
for word in s.split():
    rev=word[::-1]
    res=rev+ " "+ res  
del(s)
s=res
print(s)    
