'''
Remove Duplicate Words from a String

Voice Assistant Noise Correction System

A voice assistant records spoken commands from users.

Due to microphone disturbance and network lag, some words are repeated multiple times.

The company wants a Python program that removes duplicate words while maintaining the original order.

``
hello hello how are are you


Output:


hello how are you
'''




str=input("Enter string: ")
s=str.split()
visit=[]
count=0
res=0
for  ch1 in s:
    if ch1 not in visit:
        count+=1
        visit.append(ch1)
print(" ".join(visit))

