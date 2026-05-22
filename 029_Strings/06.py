'''
AI Chat Toxic Pattern Detector

An AI moderation system wants to detect whether a sentence contains three consecutive repeating characters.

If found:

text
Spam Pattern Found


Else:

text
Clean Message


### Input:

text
heyyy broooo welcome


### Output:

text
Spam Pattern Found
'''



s=input("Enter string: ")
pre=s[0]
i=1
found=0
count=0
while i<len(s):
    
    if pre!=s[i]:
        pre=s[i]
        count=1
    else:
        count+=1
    if count>=3:
        #print(pre)
        found=1
        break
    else:
        found=0
        
    i+=1
if found==0:
    print("Clean message ")
else:
    print("spam pattern found")